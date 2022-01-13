class GraphqlController < ApplicationController
  include FeatureFlags
  include GraphqlDevise::Concerns::SetUserByToken

  feature_flag :graphql_api

  skip_before_action :verify_authenticity_token
  skip_authorization_check

  class QueryStringError < StandardError; end

  def execute
    begin
      raise GraphqlController::QueryStringError if query_string.nil?

      variables = prepare_variables(params[:variables])
      operation_name = params[:operationName]
      context = gql_devise_context(User)
      result = ConsulSchema.execute(query_string,
        variables: variables,
        context: context,
        operation_name: operation_name
      )
      render json: result
    rescue GraphqlController::QueryStringError
      render json: { message: "Query string not present" }, status: :bad_request
    rescue JSON::ParserError
      render json: { message: "Error parsing JSON" }, status: :bad_request
    rescue GraphQL::ParseError
      render json: { message: "Query string is not valid JSON" }, status: :bad_request
    rescue ArgumentError => e
      render json: { message: e.message }, status: :bad_request
    end
  end

  private

    def query_string
      if request.headers["CONTENT_TYPE"] == "application/graphql"
        request.body.string
      else
        params[:query]
      end
    end

    # Handle variables in form data, JSON body, or a blank value
    def prepare_variables(variables_param)
      case variables_param
      when String
        if variables_param.present?
          JSON.parse(variables_param) || {}
        else
          {}
        end
      when Hash
        variables_param
      when ActionController::Parameters
        variables_param.to_unsafe_hash # GraphQL-Ruby will validate name and type of incoming variables.
      when nil
        {}
      else
        raise ArgumentError, "Unexpected parameter: #{variables_param}"
      end
    end
end

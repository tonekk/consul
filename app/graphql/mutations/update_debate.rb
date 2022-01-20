module Mutations
  class UpdateDebate < BaseMutation

    argument :id, ID, required: true
    argument :attributes, Types::DebateAttributes, required: true

    type Types::DebateType

    def resolve(id:, attributes:)
      begin
        user = context[:current_resource]
        debate = Debate.find(id)

        unless debate.author == user
          raise GraphQL::ExecutionError, "User '#{user.username}' is not authorized to update Debate with id '#{debate.id}'"
        end

        debate.update_attributes!(attributes.to_hash)
        debate
      rescue ActiveRecord::RecordInvalid, ActiveRecord::RecordNotFound => e
        raise GraphQL::ExecutionError, e.message
      end
    end
  end
end
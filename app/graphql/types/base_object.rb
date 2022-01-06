module Types
  class BaseObject < GraphQL::Schema::Object
    field_class Types::BaseField

    def self.field_with_deprecated_sibling(field_name, type, null:)
      reason = "Snake case fields are deprecated. Please use #{field_name.to_s.camelize(:lower)}."

      field field_name, type, null: null
      field field_name, type, null: null, camelize: false, deprecation_reason: reason
    end
  end
end

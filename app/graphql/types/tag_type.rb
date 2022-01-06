module Types
  class TagType < Types::BaseObject
    field :id, ID, null: false
    field :name, String, null: true
    field :kind, String, null: true

    field_with_deprecated_sibling :taggings_count, Integer, null: true
  end
end

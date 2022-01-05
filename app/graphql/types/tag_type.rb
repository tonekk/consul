module Types
  class TagType < Types::BaseObject
    field :id, ID, null: false
    field :name, String, null: true
    field :taggings_count, Integer, null: true
    field :kind, String, null: true
  end
end

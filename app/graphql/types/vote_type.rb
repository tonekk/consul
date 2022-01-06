module Types
  class VoteType < Types::BaseObject
    field :id, ID, null: false

    field_with_deprecated_sibling :votable_id, Integer, null: true
    field_with_deprecated_sibling :votable_type, String, null: true
    field_with_deprecated_sibling :public_created_at, String, null: true
    field_with_deprecated_sibling :vote_flag, Boolean, null: true
  end
end

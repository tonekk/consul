module Types
  class CommentType < Types::BaseObject
    field :id, ID, null: false
    field :body, String, null: true
    field :ancestry, String, null: true
    field :parent_id, ID, null: true

    field_with_deprecated_sibling :cached_votes_total, Integer, null: true
    field_with_deprecated_sibling :cached_votes_up, Integer, null: true
    field_with_deprecated_sibling :cached_votes_down, Integer, null: true
    field_with_deprecated_sibling :commentable_id, Integer, null: true
    field_with_deprecated_sibling :commentable_type, String, null: true
    field_with_deprecated_sibling :confidence_score, Integer, null: false
    field_with_deprecated_sibling :public_author, Types::UserType, null: true
    field_with_deprecated_sibling :public_created_at, String, null: true
    field_with_deprecated_sibling :votes_for, Types::VoteType.connection_type, null: true
  end
end

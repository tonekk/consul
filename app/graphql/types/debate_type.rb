module Types
  class DebateType < Types::BaseObject
    field :id, ID, null: false
    field :title, String, null: true
    field :comments, Types::CommentType.connection_type, null: true
    field :description, String, null: true
    field :tags, Types::TagType.connection_type, null: true

    field_with_deprecated_sibling :public_created_at, String, null: true
    field_with_deprecated_sibling :cached_votes_total, Integer, null: true
    field_with_deprecated_sibling :cached_votes_up, Integer, null: true
    field_with_deprecated_sibling :cached_votes_down, Integer, null: true
    field_with_deprecated_sibling :comments_count, Integer, null: true
    field_with_deprecated_sibling :hot_score, Integer, null: true
    field_with_deprecated_sibling :confidence_score, Integer, null: true
    field_with_deprecated_sibling :public_author, Types::UserType, null: true
    field_with_deprecated_sibling :votes_for, Types::VoteType.connection_type, null: true
  end
end

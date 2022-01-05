module Types
  class DebateType < Types::BaseObject
    field :id, ID, null: false
    field :title, String, null: true
    field :description, String, null: true
    field :public_created_at, String, null: true
    field :cached_votes_total, Integer, null: true
    field :cached_votes_up, Integer, null: true
    field :cached_votes_down, Integer, null: true
    field :comments_count, Integer, null: true
    field :hot_score, Integer, null: true
    field :confidence_score, Integer, null: true
    field :comments, Types::CommentType.connection_type, null: true
    field :public_author, Types::UserType, null: true
    field :votes_for, Types::VoteType.connection_type, null: true
    field :tags, Types::TagType.connection_type, null: true
  end
end

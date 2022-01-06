module Types
  class ProposalType < Types::BaseObject
    field :id, ID, null: false
    field :title, String, null: true
    field :description, String, null: true
    field :geozone, Types::GeozoneType, null: true
    field :comments, Types::CommentType.connection_type, null: true
    field :summary, String, null: true
    field :tags, Types::TagType.connection_type, null: true

    field_with_deprecated_sibling :cached_votes_up, Integer, null: true
    field_with_deprecated_sibling :comments_count, Integer, null: true
    field_with_deprecated_sibling :hot_score, Integer, null: true
    field_with_deprecated_sibling :confidence_score, Integer, null: true
    field_with_deprecated_sibling :public_created_at, String, null: true
    field_with_deprecated_sibling :video_url, String, null: true
    field_with_deprecated_sibling :geozone_id, Integer, null: true
    field_with_deprecated_sibling :retired_at, GraphQL::Types::ISO8601DateTime, null: true
    field_with_deprecated_sibling :retired_reason, String, null: true
    field_with_deprecated_sibling :retired_explanation, String, null: true
    field_with_deprecated_sibling :proposal_notifications, Types::ProposalNotificationType.connection_type, null: true
    field_with_deprecated_sibling :public_author, Types::UserType, null: true
    field_with_deprecated_sibling :votes_for, Types::VoteType.connection_type, null: true
  end
end

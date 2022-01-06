module Types
  class ProposalNotificationType < Types::BaseObject
    field :id, ID, null: false
    field :title, String, null: true
    field :body, String, null: true
    field :proposal, Types::ProposalType, null: true

    field_with_deprecated_sibling :proposal_id, Integer, null: true
    field_with_deprecated_sibling :public_created_at, String, null: true
  end
end

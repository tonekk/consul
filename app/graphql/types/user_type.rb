module Types
  class UserType < Types::BaseObject
    field :id, ID, null: false
    field :username, String, null: true

    field_with_deprecated_sibling :public_debates, Types::DebateType.connection_type, null: true
    field_with_deprecated_sibling :public_proposals, Types::ProposalType.connection_type, null: true
    field_with_deprecated_sibling :public_comments, Types::CommentType.connection_type, null: true
  end
end

module Types
  class MutationType < Types::BaseObject
    field :add_comment_to_debate, mutation: Mutations::AddCommentToDebate, authenticate: true
    field :add_comment_to_poll, mutation: Mutations::AddCommentToPoll, authenticate: true
    field :add_comment_to_proposal, mutation: Mutations::AddCommentToProposal, authenticate: true
    field :add_reply_to_comment, mutation: Mutations::AddReplyToComment, authenticate: true
    field :cast_vote_on_comment, mutation: Mutations::CastVoteOnComment, authenticate: true
    field :cast_vote_on_debate, mutation: Mutations::CastVoteOnDebate, authenticate: true
    field :delete_comment, mutation: Mutations::DeleteComment, authenticate: true
    field :delete_document, mutation: Mutations::DeleteDocument, authenticate: true
    field :delete_image, mutation: Mutations::DeleteImage, authenticate: true
    field :provide_answer_to_poll_question, mutation: Mutations::ProvideAnswerToPollQuestion, authenticate: true
    field :publish_proposal, mutation: Mutations::PublishProposal, authenticate: true
    field :start_debate, mutation: Mutations::StartDebate, authenticate: true
    field :start_poll_for_proposal, mutation: Mutations::StartPollForProposal, authenticate: true
    field :submit_proposal, mutation: Mutations::SubmitProposal, authenticate: true
    field :support_proposal, mutation: Mutations::SupportProposal, authenticate: true
    field :update_debate, mutation: Mutations::UpdateDebate, authenticate: true
    field :update_proposal, mutation: Mutations::UpdateProposal, authenticate: true
  end
end

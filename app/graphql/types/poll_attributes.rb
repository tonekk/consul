module Types
  class PollAttributes < Types::BaseInputObject
    argument :name, String, required: true
    argument :starts_at, String, required: true
    argument :ends_at, String, required: true
    argument :description, String, required: true

    argument :questions_attributes, [Types::Poll::QuestionAttributes], required: true
  end
end
require "rails_helper"

describe "Subscriptions" do
  let!(:user) { create(:user) }

  scenario "Edit page" do
    visit edit_subscriptions_path(subscriptions_token: user.subscriptions_token)

    expect(page).to have_content "Notifications"
    expect(page).to have_content "Notify me by email when someone comments on my proposals or debates"
    expect(page).to have_content "Notify me by email when someone replies to my comments"
    expect(page).to have_content "Receive by email website relevant information"
    expect(page).to have_content "Receive a summary of proposal notifications"
    expect(page).to have_content "Receive emails about direct messages"
  end
end

RSpec.feature "Name Input Form", :type => :feature do
  scenario "Users enter their names" do
    sign_in_and_play

    expect(page).to have_content "Player1 vs. Player2"
  end
end

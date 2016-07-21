RSpec.feature "Hit Points Display", :type => :feature do
  scenario "Users HPs are displayed" do
    sign_in_and_play

    expect(page).to have_content "Player1 Hit Points: 60"
    expect(page).to have_content "Player2 Hit Points: 60"
  end
end

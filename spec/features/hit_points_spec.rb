
feature "See hit points" do
  scenario "see player 2 hit points" do
    player_1 = "Mannie"
    player_2 = "Giancarlo"

    visit "/"
    fill_in :player_1, with: player_1
    fill_in :player_2, with: player_2
    click_button "Enter Battle"

    expect(page).to have_text("#{player_2}: 100 Hit Points")
  end
end

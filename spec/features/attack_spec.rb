require 'spec_helper'
feature 'Attack' do

  scenario 'attack player 2' do
    sign_in_and_play
    click_button 'Attack'
    expect(page).to have_content 'player 1 attacked player 2'
  end

  scenario 'decrease player 2 HP by 10 points' do
    sign_in_and_play
    click_button 'Attack'
    expect(page).to have_content 'player 2: 90HP'
  end
end

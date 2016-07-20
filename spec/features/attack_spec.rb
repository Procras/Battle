require 'spec_helper'
feature 'Attack' do

  scenario 'attack player 2' do
    sign_in_and_play
    click_link 'Attack'
    expect(page).to have_content 'apple attacked banana'
  end

  scenario 'decrease player 2 HP by 10 points' do
    sign_in_and_play
    click_link 'Attack'
    expect(page).to have_content 'banana: 100HP'
  end
end

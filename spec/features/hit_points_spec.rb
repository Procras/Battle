require 'spec_helper'


feature 'hit points' do
  scenario 'viewing hit point count' do
    sign_in_and_play
    expect(page).to have_content 'player 2 has 100 HP'
  end

end

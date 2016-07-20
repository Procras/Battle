require 'spec_helper'


feature 'hit points' do
  scenario 'viewing hit point count' do
    sign_in_and_play
    expect(page).to have_content 'banana has 100 hit points'
  end

end

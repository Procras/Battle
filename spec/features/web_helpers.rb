def sign_in_and_play
  visit('/')
  fill_in :player_1_name, with: 'apple'
  fill_in :player_2_name, with: 'banana'
  click_button 'Submit'
end

def sign_in_and_play
  visit('/')
  fill_in :player_1_name, with: 'Darren'
  fill_in :player_2_name, with: 'Lawrence'
  click_button 'Submit'
end

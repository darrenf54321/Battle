def sign_in_and_play
  visit('/')
  fill_in :player_1_name, with: 'Darren'
  fill_in :player_2_name, with: 'Crispin'
  click_button 'Submit'
end

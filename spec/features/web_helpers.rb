<<<<<<< HEAD

def sign_in_and_play
  visit('/')
  fill_in :player_1_name, with: "Dave"
  fill_in :player_2_name, with: "Mittens"
  click_button "Submit"
=======
def sign_in_and_play
  visit('/')
  fill_in :player_1_name, with: 'Dave'
  fill_in :player_2_name, with: 'Mittens'
  click_button 'Submit'
end

def attack_and_confirm
  click_button 'Attack'
  click_button 'OK'
>>>>>>> a1a9dd8a5a6185509ce9292e43625258e0788008
end

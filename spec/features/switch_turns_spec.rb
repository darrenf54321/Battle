<<<<<<< HEAD
feature 'Switch turns' do
  scenario "Show next player's turn at the start of the game" do
    sign_in_and_play
    expect(page).to have_content "Dave's turn"
  end

  scenario "After player 1 has had their turn , it should be the turn of player 2" do
    sign_in_and_play
    click_button "Attack"
    click_button "OK"
    expect(page).not_to have_content "Dave's turn"
    expect(page).to have_content "Mittens's turn"
  end

    scenario "After player 2 has had their turn , it should be the turn of player 1" do
    sign_in_and_play
    click_button "Attack"
    click_button "OK"
    click_button "Attack"
    click_button "OK"
    expect(page).not_to have_content "Mitten's turn"
    expect(page).to have_content "Dave's turn"
=======
describe 'switch turns' do
  context 'seeing the current turn' do
    scenario 'at the start of the game' do
      sign_in_and_play
      expect(page).to have_content "Dave's turn"
    end

    scenario 'after Dave attacks' do
      sign_in_and_play
      attack_and_confirm
      expect(page).not_to have_content "It's Dave's turn!"
      expect(page).to have_content "It's Mittens's turn!"
    end
>>>>>>> a1a9dd8a5a6185509ce9292e43625258e0788008
  end
end

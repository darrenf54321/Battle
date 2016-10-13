feature 'attacking' do

  scenario "attack player 2 reduces player HP by 10" do
    sign_in_and_play
    click_button "Attack"
    click_link "OK"
    expect(page).to have_content "Mittens HP: 40"
  end

end

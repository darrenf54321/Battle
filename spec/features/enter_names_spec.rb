require 'spec_helper'

feature 'Enter names' do
  scenario 'submitting names' do
    visit('/')
    fill_in :player_1_name, with: 'Darren'
    fill_in :player_2_name, with: 'Crispin'
    click_button 'Submit'
    expect(page).to have_content 'Darren vs. Crispin'
  end
end

feature 'View player hit points' do
  scenario 'see other players hit points' do
    visit('/')
    fill_in :player_1_name, with: 'Darren'
    fill_in :player_2_name, with: 'Crispin'
    click_button 'Submit'
    expect(page).to have_content 'Darren vs. Crispin'
    expect(page).to have_content 'Darren: 5HP : Crispin: 2HP'
  end
end

require 'spec_helper'

feature 'Enter names' do
  scenario 'submitting names' do
    sign_in_and_play
    expect(page).to have_content 'Darren vs. Crispin'
  end
end

feature 'View player hit points' do
  scenario 'see other players hit points' do
    sign_in_and_play
    expect(page).to have_content 'Darren vs. Crispin'
    expect(page).to have_content 'Darren: 5HP : Crispin: 2HP'
  end
end

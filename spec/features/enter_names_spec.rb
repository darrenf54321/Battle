require 'spec_helper'

feature 'Enter names' do
  scenario 'submitting names' do
    sign_in_and_play
    expect(page).to have_content 'Darren vs. Lawrence'
  end
end

feature 'View player hit points' do
  scenario 'see other players hit points' do
    sign_in_and_play
    expect(page).to have_content 'Darren vs. Lawrence'
    expect(page).to have_content 'Darren: 60HP : Lawrence: 60HP'
  end
end

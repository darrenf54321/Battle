<<<<<<< HEAD
#require 'spec_helper'

feature 'enter names' do
  scenario 'submitting names' do
    sign_in_and_play
    expect(page).to have_content "Dave vs. Mittens"
  end
=======
require 'spec_helper'

feature 'enter names' do
    scenario 'submitting names' do
      sign_in_and_play
        expect(page).to have_content 'Dave vs. Mittens'
    end
>>>>>>> a1a9dd8a5a6185509ce9292e43625258e0788008
end

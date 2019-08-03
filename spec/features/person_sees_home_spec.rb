require 'rails_helper'

feature 'person sees home' do
  scenario 'sucessfully' do
    visit root_path

    expect(page).to have_content 'VisitJeri'
  end
end

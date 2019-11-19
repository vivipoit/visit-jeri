# frozen_string_literal: true
require 'rails_helper'

feature 'person selects language' do
  scenario 'successfully' do
    create(:content_locale, name: 'Portguês', hreflang_code: 'pt')
    create(:content_locale, name: 'Français', hreflang_code: 'fr')

    visit root_path
    click_on 'language_globe'
    click_on 'Français'

    expect(page.current_url).to have_content 'fr'
  end
end

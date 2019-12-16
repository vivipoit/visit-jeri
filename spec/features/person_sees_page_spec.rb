# frozen_string_literal: true

require 'rails_helper'

feature 'person sees page' do
  scenario 'sucessfully' do
    locale = create(:content_locale, hreflang_code: 'en')
    create(:page_locale, content_locale: locale, link: 'cool', page_title: 'ABC', content: 'DEF')

    visit '/en/cool'

    expect(page).to have_css 'h1', text: 'ABC'
    expect(page).to have_content 'DEF'
  end
end

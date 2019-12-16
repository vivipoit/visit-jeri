# frozen_string_literal: true

require 'rails_helper'

feature 'person goes to home' do
  scenario 'from root path' do
    create(:translation, locale: 'pt', key: 'home_small_print', value: 'O paraíso do Brasil!')
    create(:translation, locale: 'en', key: 'home_small_print', value: "Brazil's best kept secret!")

    visit root_path
    click_on 'VisitJeri'

    expect(page).to have_content 'O paraíso do Brasil!'
    expect(page).not_to have_content "Brazil's best kept secret!"
  end

  scenario 'from localed root path' do
    create(:translation, locale: 'pt', key: 'home_small_print', value: 'O paraíso do Brasil!')
    create(:translation, locale: 'en', key: 'home_small_print', value: "Brazil's best kept secret!")

    visit root_path(locale: 'en')
    click_on 'VisitJeri'

    expect(page).to have_content "Brazil's best kept secret!"
    expect(page).not_to have_content 'O paraíso do Brasil!'
  end
end

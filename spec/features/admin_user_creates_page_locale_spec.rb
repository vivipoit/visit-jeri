# frozen_string_literal: true
require 'rails_helper'

feature 'admin user creates page locale' do
  scenario 'sucessfully' do
    create(:page, name: 'Lagoa do Paraiso')
    create(:content_locale, name: 'en')

    login_as create(:admin_user)

    visit admin_dashboard_path
    click_on 'Páginas Idiomas'
    click_on 'Novo(a)'

    select 'Lagoa do Paraiso', from: 'Página'
    select 'en', from: 'Idioma'
    fill_in 'Título no Menu', with: 'Paradise Lake'
    fill_in 'Título na Página', with: 'Full day at Paradise Lake'
    fill_in 'Link', with: 'FULL day at Paradise LakÉ'
    fill_in 'Conteúdo', with: 'Some interesting info full of details and instructions.'
    click_on 'Criar Página Idioma'

    expect(page).to have_content 'Lagoa do Paraiso en Paradise Lake full-day-at-paradise-lake'
  end
end

# frozen_string_literal: true
require 'rails_helper'

feature 'admin user creates item locale' do
  scenario 'sucessfully' do
    create(:item, name: 'Compartilhado')
    create(:content_locale, name: 'en')

    login_as create(:admin_user)

    visit admin_dashboard_path
    click_on 'Itens Idiomas'
    click_on 'Novo(a)'

    select 'Compartilhado', from: 'Item'
    select 'en', from: 'Idioma'
    fill_in 'Título na Lista', with: 'Shared Transportation'
    fill_in 'Resumo na Lista', with: 'An option that is chepaer, but you go with strangers.'
    fill_in 'Link', with: 'shared transportation'
    fill_in 'Título na Página', with: 'The Shared Option'
    fill_in 'Conteúdo', with: 'Lots of more detailed information.'
    click_on 'Criar Item Idioma'

    expect(page).to have_content 'Compartilhado en Shared Transportation shared-transportation The Shared Option'
  end
end

# frozen_string_literal: true

require 'rails_helper'

feature 'admin user creates page' do
  scenario 'sucessfully' do
    create(:menu, name: 'Passeios')

    login_as create(:admin_user)

    visit admin_dashboard_path
    click_on 'Páginas'
    click_on 'Novo(a)'

    select 'Passeios', from: 'Menu'
    fill_in 'Nome', with: 'Lagoa do Paraiso'
    click_on 'Criar Página'

    expect(page).to have_content 'Passeios Lagoa do Paraiso'
  end
end

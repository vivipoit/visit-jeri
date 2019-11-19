# frozen_string_literal: true
require 'rails_helper'

feature 'admin user creates item' do
  scenario 'sucessfully' do
    create(:page, name: 'In / Out')

    login_as create(:admin_user)

    visit admin_dashboard_path
    click_on 'Itens'
    click_on 'Novo(a)'

    select 'In / Out', from: 'Página'
    fill_in 'Nome', with: 'Compartilhado'
    click_on 'Criar Item'

    expect(page).to have_content 'In / Out Compartilhado'
  end
end

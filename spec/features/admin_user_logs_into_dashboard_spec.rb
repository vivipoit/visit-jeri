# frozen_string_literal: true

require 'rails_helper'

feature 'admin user logs into dashboard' do
  scenario 'sucessfully' do
    create(:admin_user, email: 'this@something.com', password: 'super-secret')

    visit admin_dashboard_path
    fill_in 'E-mail', with: 'this@something.com'
    fill_in 'Senha', with: 'super-secret'
    click_on 'Entrar'

    expect(page).to have_content 'Painel Administrativo'
    expect(page).to have_content 'Logado com sucesso.'
  end
end

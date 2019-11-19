# frozen_string_literal: true

ActiveAdmin.register_page "Dashboard" do
  menu priority: 0, label: proc { I18n.t("active_admin.dashboard") }

  content title: proc { I18n.t("active_admin.dashboard") } do
    div class: "blank_slate_container", id: "dashboard_default_message" do
      span class: "blank_slate" do
        span 'Bem vindo ao Painel Administrativo.'
        small 'No menu acima você faz a gestão dos seus conteúdos e traduções.'
        small 'Nos paineis abaixo você verifica quais conteúdos já foram traduzidos.'
      end
    end

    columns do
      @content_locales = ContentLocale.all

      column do
        panel 'Menus' do
          Menu.all.map do |menu|
            hr
            strong menu.name
            @content_locales.each do |cl|
              div do
                menu_locale = MenuLocale.where(menu: menu, content_locale: cl).first
                if menu_locale.blank?
                  status_tag false, label: 'Pendente'
                else
                  status_tag true, label: 'OK'
                end
                span cl.name
              end
            end
            hr
          end
        end
      end

      column do
        panel 'Páginas' do
          Page.all.map do |page|
            hr
            strong page.name
            small page.menu.name
            @content_locales.each do |cl|
              div do
                page_locale = PageLocale.where(page: page, content_locale: cl).first
                if page_locale.blank?
                  status_tag false, label: 'Pendente'
                else
                  status_tag true, label: 'OK'
                end
                span cl.name
              end
            end
            hr
          end
        end
      end

      column do
        panel 'Itens' do
          Item.all.map do |item|
            hr
            strong item.name
            small item.page.name
            @content_locales.each do |cl|
              div do
                item_locale = ItemLocale.where(item: item, content_locale: cl).first
                if item_locale.blank?
                  status_tag false, label: 'Pendente'
                else
                  status_tag true, label: 'OK'
                end
                span cl.name
              end
            end
            hr
          end
        end
      end

    end
  end
end

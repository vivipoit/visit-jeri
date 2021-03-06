# frozen_string_literal: true

ActiveAdmin.register MenuLocale do
  menu priority: 6
  permit_params :menu_id, :content_locale_id, :name

  index do
    selectable_column
    id_column
    column :menu
    column :content_locale
    column :name
    actions
  end

  filter :menu
  filter :content_locale
  filter :name

  form do |f|
    f.inputs do
      f.input :menu
      f.input :content_locale
      f.input :name
    end
    f.actions
  end

  controller do
    def create
      super do
        redirect_to(collection_url) && return if resource.valid?
      end
    end

    def update
      super do
        redirect_to(collection_url) && return if resource.valid?
      end
    end
  end
end

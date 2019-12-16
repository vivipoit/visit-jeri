# frozen_string_literal: true

ActiveAdmin.register ItemLocale do
  menu priority: 15
  permit_params :item_id, :content_locale_id, :list_title, :list_summary, :link, :page_title, :page_content

  index do
    selectable_column
    id_column
    column :item
    column :content_locale
    column :list_title
    column :link
    column :page_title
    actions
  end

  filter :item
  filter :content_locale
  filter :link
  filter :page_title

  form do |f|
    f.inputs do
      f.input :item
      f.input :content_locale
      f.input :list_title
      f.input :list_summary
      f.input :link
      f.input :page_title
      f.input :page_content, as: :ckeditor
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

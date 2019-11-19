# frozen_string_literal: true
ActiveAdmin.register Item do
  menu priority: 14
  permit_params :page_id, :name

  index do
    selectable_column
    id_column
    column :page
    column :name
    actions
  end

  filter :page
  filter :name

  form do |f|
    f.inputs do
      f.input :page
      f.input :name
    end
    f.actions
  end

  controller do
    def create
      super do |format|
        redirect_to collection_url and return if resource.valid?
      end
    end

    def update
      super do |format|
        redirect_to collection_url and return if resource.valid?
      end
    end
  end

end

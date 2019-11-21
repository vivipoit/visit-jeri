# frozen_string_literal: true

ActiveAdmin.register Menu do
  menu priority: 5
  permit_params :name

  index do
    selectable_column
    id_column
    column :name
    actions
  end

  filter :name

  form do |f|
    f.inputs do
      f.input :name
    end
    f.actions
  end

  controller do
    def create
      super do |format|
        redirect_to(collection_url) && (return) if resource.valid?
      end
    end

    def update
      super do |format|
        redirect_to(collection_url) && (return) if resource.valid?
      end
    end
  end

end

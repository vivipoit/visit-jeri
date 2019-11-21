# frozen_string_literal: true

ActiveAdmin.register GeneralTranslation do
  menu priority: 2
  permit_params :key, :locale, :value

  index do
    selectable_column
    id_column
    column :key
    column :locale
    column :value
    actions
  end

  filter :key
  filter :locale
  filter :value

  form do |f|
    f.inputs do
      f.input :key, as: :select, collection: TranslationKey.list
      f.input :locale, as: :select, collection: ContentLocale.all.pluck(:name, :hreflang_code)
      f.input :value
    end
    f.actions
  end

  controller do
    def create
      super do |format|
        redirect_to(collection_url) && return if resource.valid?
      end
    end

    def update
      super do |format|
        redirect_to(collection_url) && return if resource.valid?
      end
    end
  end

end

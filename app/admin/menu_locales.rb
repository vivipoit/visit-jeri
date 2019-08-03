ActiveAdmin.register MenuLocale do
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

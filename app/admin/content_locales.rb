ActiveAdmin.register ContentLocale do
  menu priority: 1
  permit_params :name, :hreflang_code

  index do
    selectable_column
    id_column
    column :name
    column :hreflang_code
    actions
  end

  filter :name
  filter :hreflang_code

  form do |f|
    f.inputs do
      f.input :name
      f.input :hreflang_code
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

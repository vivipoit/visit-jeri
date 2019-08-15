ActiveAdmin.register Page do
  menu priority: 9
  permit_params :menu_id, :name

  index do
    selectable_column
    id_column
    column :menu
    column :name
    actions
  end

  filter :menu
  filter :name

  form do |f|
    f.inputs do
      f.input :menu
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

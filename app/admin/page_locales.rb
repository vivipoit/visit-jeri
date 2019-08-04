ActiveAdmin.register PageLocale do
  permit_params :page_id, :content_locale_id, :menu_title, :page_title, :link, :content

  index do
    selectable_column
    id_column
    column :page
    column :content_locale
    column :menu_title
    column :link
    actions
  end

  filter :page
  filter :content_locale
  filter :menu_title
  filter :page_title
  filter :link

  form do |f|
    f.inputs do
      f.input :page
      f.input :content_locale
      f.input :menu_title
      f.input :page_title
      f.input :link
      f.input :content, as: :ckeditor
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
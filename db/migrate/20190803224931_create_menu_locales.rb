class CreateMenuLocales < ActiveRecord::Migration[5.2]
  def change
    create_table :menu_locales do |t|
      t.references :menu, foreign_key: true
      t.references :content_locale, foreign_key: true
      t.string :name

      t.timestamps
    end
  end
end

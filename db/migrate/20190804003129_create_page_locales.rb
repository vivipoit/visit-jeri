class CreatePageLocales < ActiveRecord::Migration[5.2]
  def change
    create_table :page_locales do |t|
      t.references :page, foreign_key: true
      t.references :content_locale, foreign_key: true
      t.string :menu_title
      t.string :page_title
      t.string :link
      t.text :content

      t.timestamps
    end
  end
end

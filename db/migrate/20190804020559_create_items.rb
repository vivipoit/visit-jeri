class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.references :page, foreign_key: true
      t.string :name

      t.timestamps
    end
  end
end

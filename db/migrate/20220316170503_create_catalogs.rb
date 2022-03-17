class CreateCatalogs < ActiveRecord::Migration[6.1]
  def change
    create_table :catalogs do |t|
      t.string :show_id
      t.string :genre
      t.string :title
      t.string :director
      t.string :cast
      t.string :country
      t.date :date_added
      t.integer :release_year
      t.string :rating
      t.string :duration
      t.string :listed_in
      t.text :description

      t.timestamps
    end
    add_index :catalogs, :show_id
    add_index :catalogs, :genre
    add_index :catalogs, :title
    add_index :catalogs, :director
    add_index :catalogs, :cast
    add_index :catalogs, :country
    add_index :catalogs, :date_added
    add_index :catalogs, :release_year
    add_index :catalogs, :rating
    add_index :catalogs, :duration
    add_index :catalogs, :listed_in
    add_index :catalogs, :description
  end
end

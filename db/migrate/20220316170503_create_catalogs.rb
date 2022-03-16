class CreateCatalogs < ActiveRecord::Migration[6.1]
  def change
    create_table :catalogs do |t|
      t.string :show_id
      t.string :platform
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
  end
end

class CreateBeers < ActiveRecord::Migration
  def change
    create_table :beers do |t|
      t.integer :release
      t.float :price
      t.text :description
      t.string :img_url

      t.timestamps null: false
    end
  end
end

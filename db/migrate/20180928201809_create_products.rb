class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :name
      t.string :brand
      t.integer :price
      t.string :image_link
      t.string :description
      t.integer :rating
      t.string :product_type
      t.string :product_colors
      t.belongs_to :item

      t.timestamps
    end
  end
end

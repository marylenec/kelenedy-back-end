class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.integer :quantity
      t.belongs_to :cart
      t.belongs_to :products

      t.timestamps
    end
  end
end

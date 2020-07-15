class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :brand_name
      t.string :product_name
      t.string :description
      t.string :image_url
      t.string :website
      t.integer :category_id

      t.timestamps
    end
  end
end

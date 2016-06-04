class CreateProposals < ActiveRecord::Migration
  def change
    create_table :proposals do |t|
      t.integer :property_id
      t.text :store_name
      t.text :description
      t.integer :square_feet
      t.integer :nearest
      t.integer :bid
      t.string :architectural
      t.string :text
      t.string :image
      t.integer :user_id

      t.timestamps

    end
  end
end

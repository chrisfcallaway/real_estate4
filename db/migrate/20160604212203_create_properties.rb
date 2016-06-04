class CreateProperties < ActiveRecord::Migration
  def change
    create_table :properties do |t|
      t.text :description
      t.integer :square_feet
      t.text :intended_use
      t.integer :asking_price
      t.integer :user_id

      t.timestamps

    end
  end
end

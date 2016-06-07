class AddColumnToFavorites < ActiveRecord::Migration
  def change
    add_column :favorites, :proposal_id, :integer
  end
end

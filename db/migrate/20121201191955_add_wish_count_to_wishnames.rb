class AddWishCountToWishnames < ActiveRecord::Migration
  def change
    add_column :wishnames, :wish_count, :integer
  end
end

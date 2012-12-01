class AddEmailToWish < ActiveRecord::Migration
  def change
    add_column :wishes, :email, :string
  end
end

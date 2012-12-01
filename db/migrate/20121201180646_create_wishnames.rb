class CreateWishnames < ActiveRecord::Migration
  def change
    create_table :wishnames do |t|
      t.string :name

      t.timestamps
    end
  end
end

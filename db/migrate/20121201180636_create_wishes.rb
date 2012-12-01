class CreateWishes < ActiveRecord::Migration
  def change
    create_table :wishes do |t|
      t.integer :wishname_id
      t.string :ip
      t.string :location

      t.timestamps
    end
  end
end

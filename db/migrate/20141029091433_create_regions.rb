class CreateRegions < ActiveRecord::Migration
  def change
    create_table :regions do |t|
      t.string :region_name
      t.string :language
      t.string :climate
      t.integer :rank
      t.string :picture

      t.timestamps
    end
  end
end

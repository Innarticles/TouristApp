class CreateTouristsites < ActiveRecord::Migration
  def change
    create_table :touristsites do |t|
      t.string :name
      t.string :location
      t.string :description
      t.string :picture
      t.integer :rating
      t.references :state, index: true

      t.timestamps
    end
  end
end

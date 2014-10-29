class CreateSites < ActiveRecord::Migration
  def change
    create_table :sites do |t|
      t.string :site_name
      t.string :contact
      t.string :address
      t.text :description
      t.string :picture
      t.references :region, index: true

      t.timestamps
    end
  end
end

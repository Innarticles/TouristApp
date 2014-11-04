class AddPicturesToTouristsite < ActiveRecord::Migration
  def change
    add_column :touristsites, :pic1, :string
    add_column :touristsites, :pic2, :string
    add_column :touristsites, :pic4, :string
  end
end

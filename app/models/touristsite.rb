class Touristsite < ActiveRecord::Base
  belongs_to :state
  validates_presence_of :name, :location, :description, :state_id, :rating, :picture, :pic1, :pic2, :pic4

  mount_uploader :picture, PictureUploader
end
class Touristsite < ActiveRecord::Base
  belongs_to :state
  validates_presence_of :name, :location, :description, :state_id, :rating
end
class Site < ActiveRecord::Base
  belongs_to :region
  validates_presence_of :site_name, :contact, :description
  
end

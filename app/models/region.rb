class Region < ActiveRecord::Base
	validates_presence_of :region_name, :language, :climate, :rank
	validates_uniqueness_of :region_name
	has_many :sites
end

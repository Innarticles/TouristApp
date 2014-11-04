class State < ActiveRecord::Base
	has_many :touristsites, dependent: :destroy
	validates_presence_of :name, :language, :climate, :info, :culture
	validates_uniqueness_of :name
end

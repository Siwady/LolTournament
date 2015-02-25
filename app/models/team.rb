class Team < ActiveRecord::Base
	belongs_to :tournament
	has_many :players

	validates_presence_of :name
	
end

class Tournament < ActiveRecord::Base
  belongs_to :country
	has_many :teams
	validates_presence_of :name, :team_limits
	validates_length_of :team_limits, minimum: 1
  validates_length_of :prize, minimum: 0
   validates_uniqueness_of :name
end

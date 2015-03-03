class Tournament < ActiveRecord::Base
  belongs_to :country
	has_many :teams
	validates_presence_of :name, :team_limits
  validates_numericality_of :prize, greater_than_or_equal_to: 0
  validates_numericality_of :team_limits, greater_than_or_equal_to: 1
  validates_uniqueness_of :name

  accepts_nested_attributes_for :teams, reject_if: :all_blank
end

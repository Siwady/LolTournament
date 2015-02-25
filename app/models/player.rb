class Player < ActiveRecord::Base
	validates_presence_of :nickname
	validates_uniqueness_of :nickname, :email
  validates_length_of :nickname, in: 3..8
end

class Player < ActiveRecord::Base
	validates_presence_of :nickname
	validates_uniqueness_of :nickname, :email
  validates_length_of :nickname, in: 3..8

  around_create :call_around_create


  private
    def call_around_create
      self.points=0
      yield
    end
end

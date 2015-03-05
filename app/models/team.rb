class Team < ActiveRecord::Base
	belongs_to :tournament
	has_many :players

	validates_presence_of :name
	around_create :call_around_create

  private
    def call_around_create
      self.victories=0
      self.losses=0
      yield
    end

end

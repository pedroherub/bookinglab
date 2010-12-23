class Computer < ActiveRecord::Base
	has_many :bookings, :dependent => :destroy 
	validates_presence_of :block, :room, :number
	def total_computer
           "#{block} - #{room} - #{number.to_s}"
        end
end

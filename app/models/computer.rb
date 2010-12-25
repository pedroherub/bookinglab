class Computer < ActiveRecord::Base
	has_many :bookings, :dependent => :destroy 
	validates_presence_of :block, :room, :number
        validates_associated :bookings
	def total_computer
           "#{block} - #{room} - #{number.to_s}"
        end
end

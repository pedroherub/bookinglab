class Timeunit < ActiveRecord::Base
	has_many :bookings, :dependent => :destroy
	validates_associated :bookings
end

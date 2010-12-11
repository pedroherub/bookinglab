class Booking < ActiveRecord::Base
  	belongs_to :student
  	belongs_to :computer
  	belongs_to :timeunit
        #has_one :computer
	#has_one :student
	#has_one :timeunit
	validates_presence_of :student_id
	validates_presence_of :computer_id
	validates_presence_of :timeunit_id
end

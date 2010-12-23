class Booking < ActiveRecord::Base
  	belongs_to :student
  	belongs_to :computer
  	belongs_to :timeunit
        #has_one :computer
	#has_one :student
	#has_one :timeunit
	#validates_presence_of :student_id
	validates_presence_of :computer_id
	validates_presence_of :timeunit_id
end

# == Schema Information
#
# Table name: bookings
#
#  id          :integer         not null, primary key
#  student_id  :integer
#  computer_id :integer
#  timeunit_id :integer
#  date        :date
#  created_at  :datetime
#  updated_at  :datetime
#


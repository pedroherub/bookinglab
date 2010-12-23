class Timeunit < ActiveRecord::Base
	has_many :bookings, :dependent => :destroy
	validates_associated :bookings
end

# == Schema Information
#
# Table name: timeunits
#
#  id         :integer         not null, primary key
#  timein     :time
#  timeout    :time
#  created_at :datetime
#  updated_at :datetime
#


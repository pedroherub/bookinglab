class Student < ActiveRecord::Base

	acts_as_authentic

	has_many :bookings, :dependent => :destroy 
	validates_presence_of :studentid, :name, :email, :crypted_password
	validates_uniqueness_of :studentid, :email
	validates_associated :bookings
	validates_confirmation_of :email
	#validates_length_of :crypted_password, :in => 6..10,
	#	:too_short => "must have at least %{count} characters",
    	#	:too_long  => "must have at most %{count} characters"
  	#validates_length_of :studentid, :is => 8
	validates_numericality_of :studentid, :only_integer => true

end

# == Schema Information
#
# Table name: students
#
#  id                :integer         not null, primary key
#  studentid         :integer
#  name              :string(255)
#  created_at        :datetime
#  updated_at        :datetime
#  email             :string(255)
#  crypted_password  :string(255)
#  password_salt     :string(255)
#  persistence_token :string(255)
#


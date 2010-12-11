class Student < ActiveRecord::Base
	has_many :bookings, :dependent => :destroy 
	validates_presence_of :studentid, :name, :email, :email_confirmation, :password
	validates_uniqueness_of :studentid, :email
	validates_associated :bookings
	validates_confirmation_of :email
  	validates_presence_of :email_confirmation
	validates_length_of :password, :in => 6..10,
		:too_short => "must have at least %{count} characters",
    		:too_long  => "must have at most %{count} characters"
  	validates_length_of :studentid, :is => 8
	validates_numericality_of :studentid, :only_integer => true,
		:wrong_length => "SSID must have %{count} characters"
	validates_format_of :email, :with => "^[A-Z0-9._%+-]+@[A-Z0-9.-]+\.[A-Z]{2,4}$",
		:message => "Is not a valid mail format!"
end

# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
Bookinglab::Application.initialize!

Time::DATE_FORMATS[:time] = "%H:%M"

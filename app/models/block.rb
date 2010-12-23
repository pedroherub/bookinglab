class Block < ActiveRecord::Base
	attr_accessible :name
	has_many :rooms, :dependent => :destroy
        has_many :computers, :through => :room
end

class Room < ActiveRecord::Base
	attr_accessible :name, :block_id
	belongs_to :block
	has_many :computers, :dependent => :destroy
end

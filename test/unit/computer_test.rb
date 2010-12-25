require File.dirname(__FILE__) + '/../test_helper'

class ComputerTest < ActiveSupport::TestCase
  
test "should not save computer without room block or number" do
  computer = Computer.new
  assert !computer.save, "Saved the computer without a room, a block or a number"
end

end

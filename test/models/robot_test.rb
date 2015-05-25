require_relative '../test_helper'

class RobotTest < Minitest::Test
  
  def test_it_assigns_attributes_correctly
    data = {:id         => 1,
            :name       => "Robot1",
            :city       => "Denver",
            :state      => "CO",
            :avatar     => "avatar1",
            :birthdate  => Date.new,
            :date_hired => Date.new,
            :department => "department1"
    }
    
    robot = Robot.new(data)
    
    assert_equal 1,             robot.id
    assert_equal "Robot1",      robot.name
    assert_equal "Denver",      robot.city
    assert_equal "CO",          robot.state
    assert_equal "avatar1",     robot.avatar
    assert_equal "",            robot.birthdate
    assert_equal "",            robot.date_hired
    assert_equal "department1", robot.department
  end
end

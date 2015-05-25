class RobotWorld
  
  def self.database
    if ENV["ROBOT_WORLD_ENV"] == "test"
      @database = Sequel.sqlite('db/robot_world_test.sqlite3')
    else
      @database = Sequal.sqlite('db/robot_world.sqlite3')
    end
  end
  
  def self.dataset
    database.from(:robots)
  end
  
  def self.create(data)
    dataset.insert(:name       => data[:name], 
                   :city       => data[:city], 
                   :state      => data[:state], 
                   :avatar     => data[:avatar], 
                   :birthdate  => data[:birthdate], 
                   :date_hired => data[:date_hired], 
                   :department => data[:department])
  end
  
  def self.all
    dataset.map{|robot| Robot.new(robot)}
  end
end

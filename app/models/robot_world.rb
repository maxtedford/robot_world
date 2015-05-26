class RobotWorld
  
  def self.database
    if ENV["ROBOT_WORLD_ENV"] == "test"
      @database ||= Sequel.sqlite('db/robot_world_test.sqlite3')
    else
      @database ||= Sequel.sqlite('db/robot_world.sqlite3')
    end
  end
  
  def self.dataset
    database.from(:robots)
  end
  
  def self.create(robot)
    dataset.insert(:name       => robot[:name], 
                   :city       => robot[:city], 
                   :state      => robot[:state], 
                   :avatar     => robot[:avatar], 
                   :birthdate  => robot[:birthdate], 
                   :date_hired => robot[:date_hired], 
                   :department => robot[:department])
  end
  
  def self.all
    dataset.map{|robot| Robot.new(robot)}
  end
  
  def self.find(id)
    robot = dataset.where(id: id)
    Robot.new(robot.to_a.first)
  end
  
  def self.update(id, data)
    dataset.where(:id => id).update(data)
  end
  
  def self.destroy(id)
    dataset.where(:id => id).delete
  end
  
  def self.delete_all
    dataset.delete
  end
end

require 'sequel'
require_relative '../../app/models/robot_world'

TaskManager.database.create_table(:robots) do
  primary_key :id
  String      :name
  String      :city
  String      :state
  String      :avatar
  String      :birthdate
  String      :date_hired
  String      :department
end

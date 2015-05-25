require 'tilt/erb'

class RobotWorldApp < Sinatra::Base
  
  get "/" do
    erb :dashboard
  end
end

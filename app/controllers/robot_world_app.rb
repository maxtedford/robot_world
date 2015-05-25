require 'tilt/erb'

class RobotWorldApp < Sinatra::Base
  
  get "/" do
    erb :dashboard
  end
  
  get "/robots" do
    @robots = ["Robot 1", "Robot 2", "Robot 3"]
    erb :index
  end
end

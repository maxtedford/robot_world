require 'tilt/erb'

class RobotWorldApp < Sinatra::Base
  
  get "/" do
    erb :dashboard
  end
  
  get "/robots" do
    @robots = RobotWorld.all
    erb :index
  end
  
  get "/robots/new" do
    erb :new
  end
  
  post "/robots" do
    RobotWorld.create(params[:robot])
    redirect "/robots"
  end
end

require './config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
    enable :sessions
    set :session_secret, "fwitterland"
  end

  get '/' do
    erb :'home'
  end

  helpers do
    def logged_in?
      !!session[:user_id]
    end

    def logout
      session.clear
    end
  end

end

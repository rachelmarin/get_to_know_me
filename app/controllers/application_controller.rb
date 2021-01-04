require './config/environment'

class ApplicationController < Sinatra::Base

  configure do
    enable :sessions
    set :public_folder, 'public'
    set :session_secret, "stars"  
    set :views, 'app/views'
  end
  

  get "/" do
    redirect_if_logged_in
    erb :welcome
  end


  helpers do

      def is_logged_in
        !!session[:user_id]
      end

      def current_user
        User.find_by_id(session[:user_id])
       end

       def redirect_if_not_logged_in
        redirect "/login" unless is_logged_in
      end
      
      def redirect_if_logged_in
        redirect "/signs" if is_logged_in
      end

    end

  end
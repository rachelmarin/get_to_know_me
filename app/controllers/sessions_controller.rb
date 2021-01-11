class SessionsController < ApplicationController
        
    get '/signup' do
        redirect_if_logged_in
      erb :'sessions/signup'
    end

    post '/signup' do
      user = User.new(params[:user])
      if user.save
        session[:user_id] = user.id
        redirect "/signs"
      else
        redirect "/signup"
      end
    end
  
    get '/login' do
      redirect_if_logged_in
      erb :'sessions/login'
    end
  
    post '/login' do
      user = User.find_by_username(params[:user][:username])
      current_user = user
      if user && user.authenticate(params[:user][:password])
        session[:user_id] = user.id
        redirect "/signs/#{user.id}"
      else
        redirect "/login"
      end
    end

    get "/sessions/:id" do
      user = User.find_by(id: params[:id])
      erb :'/signs/show'
  end

  
    get '/logout' do
      session.clear
      redirect '/login'
    end
  end
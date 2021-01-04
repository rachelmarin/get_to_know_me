class SignController < ApplicationController
    require 'zodiac'
    require 'shengxiao'
    
      get '/signs' do
      redirect_if_not_logged_in      
        @signs = Sign.all
        @sign = Sign.find_by_id(session[:sign_id])
        erb :'/signs/index'
      end
    
      get '/signs/new' do
        erb :'signs/new'
      end
      
      get '/signs/:id' do
        find_sign
        session[:sign_id] = @sign.id if @sign
        redirect_if_sign_not_found
        erb :'signs/show'
      end
      
      get '/signs/:id/edit' do
        find_sign
        redirect_if_sign_not_found
        redirect_if_not_owner
        erb :'signs/edit'
      end
      
      post '/signs' do
        
        @sign = Sign.new(params[:sign])
  
        if @sign.save
          redirect '/signs'
        else
          redirect '/signs/new'
        end
      end
      
      patch "/signs/:id" do
        find_sign
        redirect_if_sign_not_found
        if @sign.update(params[:sign])
          redirect "/signs/#{@sign.id}"
        else
          redirect "/signs/#{@sign.id}/edit"
        end
      end
    
      delete '/signs/:id' do
          find_sign
          @sign.destroy if @sign
          redirect "/signs"
        end
        
        private
        def find_sign
          @sign = Sign.find_by_id(params[:id])
        end
        
        def redirect_if_sign_not_found
          redirect "/signs" unless @sign
        end
      end
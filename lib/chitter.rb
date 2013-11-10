require 'sinatra/base'
require 'rack-flash'
require_relative 'server'

class Chitter < Sinatra::Base

  use Rack::Flash

  set :views, File.join(File.dirname(__FILE__), '..', 'views')

  enable :sessions
  set :session_secret, 'zombies'
  
  get '/' do
    @peeps = Peep.all
    erb :index
  end

  get '/users/new' do
    @user = User.new
    erb :"users/new"
  end

  post '/users' do
    @user = User.new(first_name: params[:first_name], last_name: params[:last_name], 
                    email: params[:email], username: params[:username], password: params[:password],
                    password_confirmation: params[:password_confirmation])  
    if @user.save
      session[:user_id] = @user.id
      redirect to('/')
    else
      flash.now[:errors] = @user.errors.full_messages
      erb :"users/new"
    end
  end

  get '/sessions/new' do
    erb :"sessions/new"
  end

  post '/sessions' do
    username, password = params[:username], params[:password]
    user = User.authenticate(username, password)
    if user
      session[:user_id] = user.id
      redirect to('/')
    else
      flash[:errors] = ["The username or password are incorrect. Please try again."]
      erb :"sessions/new"
    end
  end


helpers do

  def current_user    
    @current_user ||=User.get(session[:user_id]) if session[:user_id]
  end

end


  # start the server if ruby file executed directly
  run! if app_file == $0
end

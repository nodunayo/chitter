require 'sinatra/base'
require 'server'

class Chitter < Sinatra::Base

  set :views, File.join(File.dirname(__FILE__), '..', 'views')
  
  get '/' do
    @peeps = Peep.all
    erb :index
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end

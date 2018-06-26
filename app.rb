require_relative 'config/environment'

class App < Sinatra::Base
  get '/reversename/:name' do
    @name = params[:name]
   @result = @name.reverse
   return @result
  end

end

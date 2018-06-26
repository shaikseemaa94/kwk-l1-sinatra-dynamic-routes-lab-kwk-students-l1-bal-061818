require_relative 'config/environment'

class App < Sinatra::Base
  get '/reversename/:name' do
    @name = params[:name]
   @result = @name.reverse
   return @result
  end

  get '/square/:number' do
    @number = params[:number]
    @result = @number.to_i * @number.to_i
    return @result.to_s
  end

  get '/say/:number/:phrase' do
  @number = params[:number]
  @phrase = prams[:phrase]
  @result = ""
  @result = @number.to_i * @phrase
  return @result.to_s
end
end

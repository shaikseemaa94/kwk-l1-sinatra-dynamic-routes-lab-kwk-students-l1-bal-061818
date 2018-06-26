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

#  get '/say/:number/:phrase' do
#    results = ""
  #  (params[:number].to_i).times do 
      results += "#{params[:phrase]}\n"
#    end 
#    =end
    
  @number = params[:number]
  @phrase = params[:phrase]
  @result = params[:phrase]*params[:number]
  
end
  return @result.to_s
  end
end

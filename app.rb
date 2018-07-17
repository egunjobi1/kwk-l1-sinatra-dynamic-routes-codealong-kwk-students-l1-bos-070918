require_relative 'config/environment'

class App < Sinatra::Base
 
  get '/' do
    "So there's no confusion."
  end
  # This is a sample static route.
 
  get '/hello' do
    "Hello World!"
  end

  # This is a sample dynamic route.
  get "/hello/:name" do
    @user_name = params[:name]
    "Hello #{@user_name}!"
  end

  # Code your final two routes here:
   get "/hello/:name" do
    @given_name = params[:name]
    "Hello #{@given_name}!"
  end


get '/goodbye/:name' do
  @given_name = params[:name]
  "Goodbye #{@given_name}."
end

get '/multiply/:num1/:num2' do
  @num1 = params[:num1].to_i
  @num2 = params[:num1].to_i
  @answer = @num1 * @num2
 @answer.to_s
 erb :multiply
 end
end
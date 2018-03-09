require_relative 'config/environment'

class App < Sinatra::Base
  get '/' do
    "Hello World"
  end

  get '/reversename/:name' do
    params[:name].reverse #Victoria->airotciv
  end

  get '/square/:number' do
    STDERR.puts params[:number]
    x=params[:number].to_i
    y=x*x
    y.to_s
  end

  get '/say/:number/:phrase' do
    params[:phrase] * params[:number].to_i
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do
    op =  params[:operation]
    a =   params[:number1].to_i
    b =   params[:number2].to_i
    sendback=nil
    if op == 'subtract'
      sendback = a-b
    elsif op == 'add'
      sendback = a+b
    elsif op == 'multiply'
      sendback = a*b
    elsif op == 'divide'
      sendback = a / b
    else
    end
    sendback.to_s
  end
  
end

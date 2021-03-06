require 'sinatra'

get '/' do
  '<h1>Hello, welcome to the <em>home</em> page.</h1>'
end

get '/sinatra' do
  '<h3>I love <a href="http://www.sinatrarb.com/">Sinatra!</a></h3>'
end

get '/home' do
  erb :home
end

get '/cat' do
  send_file 'cat.html'
end

get '/home/:name' do
  "Hello #{params['name']}"
end

get '/about' do
  'This is our first Sinatra App.'
end

get '/roll-die' do
  "Your die roll is...#{rand(1...7)}"
end

get '/greet/:first/:last' do
  first = params[:first].capitalize
  last = params[:last].capitalize
  "Hello there #{first} #{last}! "
end

get '/square/:num' do
  num = params[:num]
  if  num.to_i.to_s == num
    (num.to_i**2).to_s
  else
    "That's not a number"
  end
end

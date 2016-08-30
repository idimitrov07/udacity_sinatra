require 'sinatra'

get '/' do
  "Hello"
end

get '/home' do
  "Home"
end

get '/home/:name' do
  "Hello #{params['name']}"
end

get '/:name' do |n|
  "Hello Mr. #{n}"
end

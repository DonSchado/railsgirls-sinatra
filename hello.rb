require 'bundler/setup'

require 'sinatra'
require 'sinatra/reloader'

get '/' do
  erb :index
end

get '/hello/:name' do
  erb :hello, locals: { name: params[:name] }
end


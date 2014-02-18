require 'bundler/setup'

require 'sinatra'
require 'sinatra/reloader'
require_relative './person'

get '/?:name?' do
  erb :index, locals: { person: Person.new(params[:name] || "please give me a name with /:name") }
end

get '/hello/:name' do
  erb :hello, locals: { name: params[:name] }
end


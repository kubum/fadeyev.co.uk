require 'sinatra'
require 'sass'
require 'compass'

configure do
  Compass.configuration do |config|
    config.project_path = File.dirname(__FILE__)
    config.sass_dir = 'views'
  end

  set :sass, Compass.sass_engine_options
end

get '/' do
  erb :index
end

get '/application.css' do
  content_type 'text/css', :charset => 'utf-8'
  sass :application
end
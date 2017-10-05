
require 'bundler/setup'
require 'sinatra'

configure { set :server, :puma }

get '/' do
  send_file File.join(settings.public_folder, 'index.html')
end

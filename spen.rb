
require 'bundler/setup'
require 'sinatra'

configure { set :server, :puma }

get '/*' do
  viewname = params[:splat].first   # eg "some/path/here"

  if File.exist?(File.join(settings.public_folder, "#{viewname}.html"))
      send_file File.join(settings.public_folder, "#{viewname}.html")
  else
    "Sorry.... I can't find that page."
  end

end

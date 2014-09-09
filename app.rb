require 'sinatra'
require 'erubis'
Tilt.register Tilt::ERBTemplate, 'html.erb'
set :erb, :escape_html => true

set :root, File.dirname(__FILE__)

get '/' do
  puts "show erb pass"
  erb :pass
end

get '/check' do
  if params['user'] == '737498' && params['pass'] == '20090610'
    @message = "You got the right answer!"
    @success = true
  else
    @notright = true
    @message = "Okay, you did not get the right answer, try again."
  end
  erb :pass
end

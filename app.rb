require "sinatra"

set :public_folder, File.dirname(__FILE__) + '/assets'

get '/' do
 	send_file 'index.html'
end

use Rack::Auth::Basic, "Restricted Area" do |username, password|
  [username, password] == ['admin', 'password']
end
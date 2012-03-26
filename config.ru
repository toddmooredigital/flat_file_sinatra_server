require './app'
require "coffee-script"
require "sprockets"

project_root = File.expand_path(File.dirname(__FILE__))
js = Sprockets::Environment.new(project_root) do |env|
  env.logger = Logger.new(STDOUT)
end

js.append_path(File.join(project_root, 'assets'))
js.append_path(File.join(project_root, 'assets', 'coffee'))

map "/js" do
  run js
end

run Sinatra::Application
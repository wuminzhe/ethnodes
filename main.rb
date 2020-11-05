require 'sinatra'
require "sinatra/reloader" if development?
require "sinatra/config_file"
require 'faraday'

config_file './config.yml'

set :current_index, nil

def next_node(settings)
  current_index = settings.current_index
  nodes = settings.nodes

  if current_index.nil?
    settings.current_index = 0
  else
    settings.current_index = (current_index + 1) % nodes.length
  end
  nodes[settings.current_index]
end

before do
  content_type :json
end

post '/' do
  if request.content_type == 'application/json'
    body = request.body.read
    node = next_node(settings)
    puts "i: #{settings.current_index}, url: #{node}"
    resp = Faraday.post(node, body, "Content-Type" => "application/json")
    resp.body
  else
    "Content-Type Wrong"
  end
end

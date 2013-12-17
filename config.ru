require 'rack'

run Rack::URLMap.new(
  '/' => Rack::File.new('index.html')
)


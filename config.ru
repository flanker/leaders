require 'rack'

use Rack::Static, :urls => ['/images', '/css', '/js', '/fonts'], :root => 'public'

run lambda { |env|
  [
    200,
    {
      'Content-Type'  => 'text/html'
    },
    File.open('public/index.html', File::RDONLY)
  ]
}

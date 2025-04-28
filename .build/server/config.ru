require 'rack/static'

use Rack::Static, urls: [''], root: '_site', index: 'index.html', cascade: true

run do |_env|
  [404, {}, [File.open('_site/404.html').read]]
end

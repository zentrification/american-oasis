require 'rack/coffee'
require 'sass/plugin/rack'
require 'slim'
require './app'

use Sass::Plugin::Rack

Slim::Engine.default_options[:pretty] = true

use Rack::Coffee,
  root: 'public',
  urls: '/javascripts/'

use Rack::Static,
  root: 'public',
  urls: ['/fonts', '/images', '/javascripts', '/stylesheets']

run Sinatra::Application

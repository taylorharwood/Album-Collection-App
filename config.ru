require "rubygems"
require "bundler"
Bundler.require

#Models
require "./models/album"

#Controllers
require "./app"

use Rack::MethodOverride
run AlbumCollectionApp


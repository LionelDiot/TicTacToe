require 'bundler'
Bundler.require
$:.unshift File.expand_path('lib', __dir__)
require 'app/board'
require 'app/game'
require 'views/index'
require 'views/done'
require 'views/done_draw'

Index.new

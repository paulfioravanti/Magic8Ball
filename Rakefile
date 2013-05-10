# -*- coding: utf-8 -*-
$:.unshift("/Library/RubyMotion/lib")
if ENV['TRAVIS']
  require 'motion/project'
else
  require 'motion/project/template/ios'
end
require 'bundler'
Bundler.require

Motion::Project::App.setup do |app|
  # Use `rake config' to see complete project settings.
  app.name = 'Magic 8-Ball'
  app.icons << 'icon.png'
end

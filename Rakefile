# -*- coding: utf-8 -*-
$:.unshift("/Library/RubyMotion/lib")
require 'motion/project/template/ios'
require 'bundler'
Bundler.require
require 'sugarcube-repl'

Motion::Project::App.setup do |app|
  # Use `rake config' to see complete project settings.
  app.name = 'Magic 8-Ball'
  app.icons << 'icon.png'
  app.delegate_class = 'ApplicationDelegate'
  app.redgreen_style = :full
  # app.files_dependencies 'app/styles/magic_8ball_style.rb' => 'app/helpers/app_delegate_helper.rb'
end

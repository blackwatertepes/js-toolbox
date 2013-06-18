#!/usr/bin/env rake
# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.

require 'bundler/gem_tasks'
require 'rspec/core/rake_task'

require File.expand_path('../config/application', __FILE__)

Trending::Application.load_tasks

Rspec::Core::RakeTask.new

task :default => :spec

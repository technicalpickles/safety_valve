require 'rake'
require 'rake/testtask'
require 'rake/rdoctask'

begin
  require 'rubygems'
  gem 'technicalpickles-jeweler'
  require 'jeweler'
  Jeweler.gemspec = Gem::Specification.new do |s|
    s.name = "safety_valve"
    s.summary = "Rails plugin to rescue common Rails exceptions, render an error with your look and feel, and return an appropriate HTTP status code"
    s.email = "josh@technicalpickles.com"
    s.homepage = "http://github.com/technicalpickles/safety_valve"
    s.description = "Rails plugin to rescue common Rails exceptions, render an error with your look and feel, and return an appropriate HTTP status code"
    s.authors = ["Josh Nichols"]
  end
rescue LoadError
  puts "Jeweler not available. Try installing technicalpickles-jeweler."
end

desc 'Default: run unit tests.'
task :default => :test

desc 'Test the safety_valve plugin.'
Rake::TestTask.new(:test) do |t|
  t.libs << 'lib'
  t.pattern = 'test/**/*_test.rb'
  t.verbose = true
end

desc 'Generate documentation for the safety_valve plugin.'
Rake::RDocTask.new(:rdoc) do |rdoc|
  rdoc.rdoc_dir = 'rdoc'
  rdoc.title    = 'SafetyValve'
  rdoc.options << '--line-numbers' << '--inline-source'
  rdoc.rdoc_files.include('README')
  rdoc.rdoc_files.include('lib/**/*.rb')
end

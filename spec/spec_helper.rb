require 'rubygems'
# require 'rspec-given'
# require 'rspec-its'
require File.expand_path("../../config/application", __FILE__)

RSpec.configure do |config|
  # Use color in STDOUT
  config.color = true

  # Use color not only in STDOUT but also in pagers and files
  config.tty = true

  # Use the specified formatter
  config.formatter = :documentation # :progress, :html, :textmate

  config.order = "random"

  # This is critical, don't remove it
  # config.formatter = 'NyanCatWideFormatter'

  # enable should syntax for rspec one-liners
  # config.expect_with(:rspec) { |c| c.syntax = :should }
end

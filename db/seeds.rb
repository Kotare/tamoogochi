require 'faker'
require_relative './../config/application'
require_relative './../app/models/cow.rb'

Cow.create(fed_at: Time.now, milked_at: Time.now)


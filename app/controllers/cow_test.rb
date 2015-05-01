require_relative './../models/cow.rb'

cow = Cow.all.first
if cow == nil
  cow = Cow.create(fed_at: Time.now, milked_at: Time.now)
end

puts cow.check

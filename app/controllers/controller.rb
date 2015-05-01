require_relative './../models/cow.rb'
require_relative './../views/view.rb'


class Controller

  def initialize
    @view = View.new
    @cow = Cow.all.first
    @cow ||= Cow.new({fed_at:Time.now, milked_at:Time.now})
  end

  def check
    @view.check(@cow.check)
  end

  def milk
    last_milked = @cow.last_milked
    min_time_between_milking = 2
    if last_milked > min_time_between_milking
      @view.milk
      @cow.milked
    else
      @view.dry
    end
  end

  def feed
    @cow.feed
    @view.feed
  end

  def procreate
    @view.give_birth(@cow.procreate)
  end


end

require_relative './../models/cow.rb'
require_relative './../views/view.rb'


class Controller

  def initialize
    @view = View.new
    @cow = Cow.all.first
    @cow ||= Cow.create({fed_at:Time.now, milked_at:Time.now})
  end

  def check
    check = @cow.check
    @view.check(check)

  end

  def milk
    if @cow.milkable?
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

  def man
    @view.manual
  end

end

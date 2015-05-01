require_relative './../models/list.rb'
require_relative './../views/view.rb'


class Controller

  def initialize
    @view = View.new
    @model = Model.new
  end

  def check
    @view.check(@model.check)
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
    @model.feed
    @view.feed
  end


end

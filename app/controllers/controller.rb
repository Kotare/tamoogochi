require_relative './../models/list.rb'
require_relative './../views/view.rb'


class Controller
  def initialize
    @view = View.new
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
end

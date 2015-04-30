require_relative './../models/list.rb'
require_relative './../views/view.rb'


class Controller
  def initialize
    @view = View.new
  end
end

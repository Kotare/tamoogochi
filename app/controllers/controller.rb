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

  def feed
    @model.feed
    @view.feed
  end

end

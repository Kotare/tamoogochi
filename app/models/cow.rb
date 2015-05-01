require_relative './../../config/application'


class Cow < ActiveRecord::Base
  def check

  end

  def feed

  end

  def milked
    self.milked_at = Time.now
    self.save
  end

  def last_milked
    Time.now - self.milked_at
  end
end

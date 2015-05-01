require_relative './../../config/application'


class Cow < ActiveRecord::Base
  def check
    {hunger: hunger, age:age_in_seconds }
  end

  def feed
    self.update(fed_at: Time.now)
  end

  def milked
    self.milked_at = Time.now
    self.save
  end

  def last_milked
    Time.now - self.milked_at
  end

  private

  def age_in_seconds
    (Time.now - self.created_at).to_i
  end

  def hunger
    time_since_last_fed = (Time.now - self.fed_at).to_i

    if(time_since_last_fed >= 60)
      hunger_level = "starving"
    elsif (time_since_last_fed >= 45)
      hunger_level = "hungry"
    elsif (time_since_last_fed >= 30)
      hunger_level = "peckish"
    else (time_since_last_fed >= 15)
      hunger_level = "full"
    end
    hunger_level
  end

  def procreate
    s
  end
end

require 'colorize'

class View

  def check(args)
    hunger = args[:hunger]
    age = args[:age]
    puts <<-CHECK
*********TA-MOOOO-GOTCHI**********
----------------------------------
Hunger: #{hunger}
Age:    #{age}
---------------------------------
CHECK
  end

  def feed
    puts <<-FEED
*********TA-MOOOO-GOTCHI**********

      db         db
    d88           88
   888            888
  d88             888b
  888             d88P
  Y888b  /``````\8888
,----Y888        Y88P`````\
|        ,'`\_/``\ |,,    |
 \,,,,-| | o | o / |  ```'
       |  """ """  |
      /             \
     |               \
     |  ,,,,----'''```|
     |``   @    @     |
      \,,    ___    ,,/
         \__|   |__/
            | | |     CHOMP
  CHOMP     \ | /

---------FEEDING YOUR COW--------
FEED
  end

  def manual
    puts "Valid commands: check, feed, milk"
  end

end

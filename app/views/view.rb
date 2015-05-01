require 'colorize'

class View
  def milk
    system('clear')
    pail_bottom = ' '*11
    pail_mid = ' '*13
    pail_top = ' '*15
    question = ''
    winner = ''
    23.times do |count|
      o = '$'
      x = ' '
      if count % 2 === 0
        o = ' '
        x = '$'
      end
      system('clear')
      question = '??????????' if count > 4
      pail_bottom.gsub!(/./,'$') if count > 7
      pail_mid.gsub!(/.{1}/,'$') if count > 14
      winner = '*****YOU REARED A CASH COW!!!******' if count > 18
      pail_top.gsub!(/.{1}/,'$') if count > 20
      udders = <<UDDER
    ;;    ; :::::%%%%%%%::::::::::::::::::::::        :
    `;    ;::.::%%%%%%%%%%%:::::::::::::::::::::::   :
         :::::%%%%%%%%%%   `::::::::::::::::'`,    ::
         `:::: U U U U U     ```````'''''''    ;   ;;
          :::: #{o}:::#{x}   #{o}                       ;  ::;
          :::' #{x}:::#{o}   #{x}                       `:::::
          :::  #{o}:::#{x}   #{o}                        ::: :
          :::  #{x}`::#{o}   #{x}                        :::&&&\\  Glo Pearl
          `::` #{o}   #{x}   #{o}                        `::`
           &&  #{x}   #{o}   #{x}                         &&&\\
               #{o}   #{x}   #{o}
               #{x}   #{o}   #{x}
               #{o}   #{x}   #{o}
               #{x}   #{o}   #{x}
               #{o}   #{x}   #{o}
           \\#{pail_top}/
            \\#{pail_mid}/
             \\#{pail_bottom}/
              TTTTTTTTTTT

              #{question}

        #{winner}
UDDER
      puts udders
      sleep(0.2)
    end
    sleep(0.5)
  end

  def dry
    puts "Woah now, you only just milked her! Give the lady some time!"
  end

  def check(args)
    hunger = args[:hunger]
    age = args[:age]

  end

  def feed
    FEED>>
    ************TA-MOOOO-GOTCHI*************







    ------------FEEDING YOUR COW-----------
    FEED
  end

  def manual
    feed
    check

  end

end

view = View.new

view.milk

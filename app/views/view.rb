# require 'colorize'

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
    age = args[:age].to_s
    check = <<-CHECK
*********TA-MOOOO-GOTCHI**********
----------------------------------
Hunger:   #{hunger}
Cow time: #{age}
---------------------------------
CHECK
    puts check
  end

  def feed
    puts <<-FEED
*********TA-MOOOO-GOTCHI**********

      db         db
    d88           88
   888            888
  d88             888b
  888             d88P
  Y888b  /``````\\8888
,----Y888        Y88P`````\\
|        ,'`\\_/``\\ |,,    |
 \\,,,,-| | o | o / |  ```'
       |  """ """  |
      /             \\
     |               \\
     |  ,,,,----'''```|
     |``   @    @     |
      \\,,    ___    ,,/
         \\__|   |__/  GETS
  GETS       | | |     CHOMP
  CHOMP     \\ | /

---------FEEDING YOUR COW--------
FEED
  end

  def print_calf
    puts "Giving birth to a baby calf..."
    sleep(3)
    puts <<-CALF
           (    )
            (oo)
   )\\.-----/(O O)
  # ;       / u
    (  .   |} )
     |/ `.;|/;
     "     " "
  CALF
  end

  def print_chick
    puts "Giving birth to a baby chick..."
    sleep(3)

    puts <<-CHICK
       .---.
    _ /     ' .---.
    >|  o    `     `\\
    ` \\       .---._ '._ ,
       '-.;         /`  /'
          \\    '._.'   /
           '.        .'
             `";--\\_/
      jgs    _/_   |
          -'`/  .--;--
            '    .'
    CHICK
  end

  def print_grumpy_cat
    puts "Giving birth to a baby cat..."
    sleep(3)

    puts <<-CAT

 _._     _,-'""`-._       GRUMPY CAT RULES!
(,-.`._,'(       |\\`-/|
    `-.-' \\ )-`( , o o)
-bf-      `-    \\`_`"'-   ALL HAIL THE MIGHTY GRUMP!
    CAT
  end

  def print_dragon
    puts "Giving birth to a baby dragon..."
    sleep(3)

    puts <<-DRAGON
           |\\___/|
            (,\\  /,)\\
            /     /  \\
           (@_^_@)/   \\
            W//W_/     \\
          (//) |        \\
        (/ /) _|_ /   )  \\
      (// /) '/,_ _ _/  (~^-.
    (( // )) ,-{        _    `.
   (( /// ))  '/\\      /      |
   (( ///))     `.   {       }
    ((/ ))    .----~-.\\   \\-'
             ///.----..>   \\
              ///-._ _  _ _}
    DRAGON
  end

  def give_birth(offspring)
    offspring.each do |baby|
      case baby.species
      when :calf then print_calf
      when :grumpy_cat then print_grumpy_cat
      when :chicken then print_chick
      when :dragon then print_dragon
      else puts "No babies today"
      end
    end
  end

  def manual
    puts "Valid commands: check, feed, milk"
  end
end



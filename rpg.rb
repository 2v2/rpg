#RPG from own repo
sleep 0.5
puts "▄▄▄█████▓ ██░ ██ ▓█████           █     █░ ▄▄▄       ██▀███   ██▀███   ██▓ ▒█████   ██▀███   "
puts "▓  ██▒ ▓▒▓██░ ██▒▓█   ▀          ▓█░ █ ░█░▒████▄    ▓██ ▒ ██▒▓██ ▒ ██▒▓██▒▒██▒  ██▒▓██ ▒ ██▒ "
puts "▒ ▓██░ ▒░▒██▀▀██░▒███            ▒█░ █ ░█ ▒██  ▀█▄  ▓██ ░▄█ ▒▓██ ░▄█ ▒▒██▒▒██░  ██▒▓██ ░▄█ ▒ "
puts "░ ▓██▓ ░ ░▓█ ░██ ▒▓█  ▄          ░█░ █ ░█ ░██▄▄▄▄██ ▒██▀▀█▄  ▒██▀▀█▄  ░██░▒██   ██░▒██▀▀█▄   "
puts "  ▒██▒ ░ ░▓█▒░██▓░▒████▒         ░░██▒██▓  ▓█   ▓██▒░██▓ ▒██▒░██▓ ▒██▒░██░░ ████▓▒░░██▓ ▒██▒ "
puts "  ▒ ░░    ▒ ░░▒░▒░░ ▒░ ░         ░ ▓░▒ ▒   ▒▒   ▓▒█░░ ▒▓ ░▒▓░░ ▒▓ ░▒▓░░▓  ░ ▒░▒░▒░ ░ ▒▓ ░▒▓░ "
puts "    ░     ▒ ░▒░ ░ ░ ░  ░           ▒ ░ ░    ▒   ▒▒ ░  ░▒ ░ ▒░  ░▒ ░ ▒░ ▒ ░  ░ ▒ ▒░   ░▒ ░ ▒░ "
puts "  ░       ░  ░░ ░   ░              ░   ░    ░   ▒     ░░   ░   ░░   ░  ▒ ░░ ░ ░ ▒    ░░   ░  "
puts "          ░  ░  ░   ░  ░             ░          ░  ░   ░        ░      ░      ░ ░     ░      "
puts
puts "Welcome!"
puts "To begin our journey, enter your name:"

class Hero
  attr_accessor :name, :max_hp, :hit_points, :hit_chance, :encounters

  def initialize(name, max_hp, hit_chance)
    @name = name
    @max_hp = max_hp
    @hit_points = max_hp
    @hit_chance = hit_chance
    @encounters = 20
  end
end # Hero constructor

new_name = gets.chomp.capitalize!

player = Hero.new(new_name, 10, 80)
# puts "#{player.name}"

puts
lines = ["After another long day of training outside you've returned to the dojo...",
         "'What's this?!' You find your fellow students tending to your master..",
         "Defeated and shamed, he looks towards his prized pupil...\nMaster: Avenge me #{player.name}...",
         "You realize this could only be the work of the Peach clan...",
         "They must pay... ALL of them!"]

lines.each {|each|
  puts each
sleep 0.5}

class Villain
  attr_accessor :name, :hit_points, :hit_chance

  def initialize(name, hit_points, hit_chance)
    @name = name
    @hit_points = hit_points
    @hit_chance = hit_chance

  end
end # Villain constructor

sleep 0.75
puts "#{player.name} takes off after the villains!"
puts
names = ["Noel", "Ciara", "Alvin", "Jerome", "Tyler", "Kyle", "Katrina", "Marc", "Adam", "David", "Sean", "Gabriel", "Lauren", "Giraud", "Joe", "Joel", "Trey", "JSON", "Tiffany", "Rachel", "Andrew", "Will", "Ricki", "Shosh", "Gen", "Master West", "Crane Master Sam", "Drunken Master Crawford"]
shuffled = names.shuffle

def encounter(player, shuffled)
  villain = shuffled.delete_at(0)
  random_baddie_hp = rand(1..8)
  random_baddie_hit = rand(1..60)

  baddie = Villain.new(villain, random_baddie_hp, random_baddie_hit)

  def increase_difficulty(baddie)
    if baddie.name == "Master West" || baddie.name == "Crane Master Sam" || baddie.name == "Drunken Master Crawford" || baddie.name == "Jerome"
      # =~ /[Sean|Sam|Crawford]/ ask Sean about this

      baddie.hit_chance *= 2 # needs to be atleast 2 to be predictably hard
      baddie.hit_points *= 10

    end


  end # difficulty function

  increase_difficulty(baddie)

  puts "#{player.name} comes across #{baddie.name}. They appear to have #{baddie.hit_points} health and #{baddie.hit_chance} chance to hit"

  def fight(player, baddie)
    sleep 0.75
    puts
    puts "#{player.name} attacks first with #{player.max_hp} health."

    moves = ["kicks", "punches", "FLYING KICKS"]
    pick_move = moves.sample
    def img_of_move(pick_move)
      if pick_move == "kicks"
        puts "  ,.             "
        puts "  \\-'__          "
        puts " / o.__o____     "
        puts " \\/_/ /.___/--,  "
        puts "   ||\\'          "
        puts "   | /           "
        puts "   \\_\\           "
        puts "   -''           "
      elsif pick_move == "punches"
        puts "     ,.          "
        puts "    \\-'_        "
        puts "    / ___/o      "
        puts "   \\__'o        "
        puts "   /_|\\\\       "
        puts "  .'./\\ \\      "
        puts " ',/  / /        "
        puts " ''-  -          "
      elsif pick_move == "FLYING KICKS"
        puts "                  .===                                "
        puts "                 / __)        _                       "
        puts "                 (  ||_.''.  {_}                      "
        puts "       ----       | =/ \\   /' :                       "
        puts "                 /\\_~/() \\__.'     ____               "
        puts "      ----      |_   \\   //  |''''`    |-'8,          "
        puts "         --   _ :  |_ '-[]___/   '.....\\--.O          "
        puts "             {_}'' .'\\ //  |':````                    "
        puts "              '...'    \\\\_/    `,                     "
        puts "                        \\ '.._.'                      "
      end
    end

    while player.hit_points > 0 && baddie.hit_points > 0

      hero_hit = rand(0..100)
      baddie_hit = rand(0..100)
      hero_move = pick_move
      baddie_move = pick_move
      if player.hit_points > 0
        if player.hit_chance  > hero_hit
          sleep 0.75
          img_of_move(pick_move)
          puts
          puts "#{player.name} #{hero_move} #{baddie.name}!"

          baddie.hit_points -= rand(2..4)
          if pick_move == "FLYING KICKS"
            baddie.hit_points -= rand(2..4)
          end
          puts "#{baddie.name} is at #{baddie.hit_points} health."

        else
          sleep 0.75
          puts "#{player.name} swings and misses!"

        end
      end

      if baddie.hit_points > 0
        if baddie.hit_chance > baddie_hit
          sleep 0.75
          img_of_move(pick_move)
          puts
          puts "#{baddie.name} #{baddie_move} #{player.name}!"

          player.hit_points -= rand(1..3)
          if pick_move == "FLYING KICKS"
            player.hit_points -= rand(1..3)
          end
          puts "You are at #{player.hit_points} health."

        else
          puts "#{baddie.name} swings hard but you dodge!"

        end
      else
        player.encounters -= 1
        player.max_hp += 1
        puts "#{baddie.name} is defeated! #{player.name} is now at #{player.max_hp} health! #{player.encounters} more of these villains to go..."
        puts
      end
    end

  end # fight function

  def flee(player, baddie)
    sleep 0.75
    player.max_hp -= 2
    puts "#{player.name} flees from #{baddie.name}. #{player.encounters} still to go... but you have only #{player.max_hp} health!"
    puts
  end # flee function

  fight_question = true

  while fight_question == true
    puts "... will #{player.name} fight or flee?"

    fight_flee = gets.chomp.downcase
    if fight_flee == "fight"
      fight(player, baddie)
      fight_question = false
    elsif fight_flee == "flee"
      flee(player, baddie)
      fight_question = false
    end
  end # fight prompting

end # encounters

gameover = false
seppuku_chance = rand(1..100)

while player.encounters > 0 && player.hit_points > 0
  encounter(player, shuffled)
  if player.encounters <= 0
    puts "You've defeated the whole Peach clan!!!"
    puts
    puts "  ,'~~~~~~~----------~~~~~~~~: ___)           "
    puts " /                            : ___)          "
    puts " |                             :____)         "
    puts " \\                              :____)        "
    puts "  `.______________              :._---.       "
    puts "     \\            ~~~--_        ::     |      "
    puts "      \\          /'     ~~~---~~~-----'       "
    puts "       \\        |`.                           "
    puts "      /|        |::\\                          "
    puts "     |::        :::|``,                       "
    puts "      `._:::::::_,'b o:                       "
    puts "       \\ ~~~~~~~   |^/                        "
    puts "       |          /-'_..---.                  "
    puts "        \\        /  |__,==_j                  "
    puts "         \\   .   |--'|:|\\                     "
    puts "         |  : :. |//,\__/                     "
    puts "          \\:  : :|/|   /                      "
    puts "          | ~~:-~\\%.`-'                       "
    puts "          |.  :  .|\\\\                         "
    puts "          \\ . : . | \\\\                        "
    puts "           | .:. /   '                        "
  end


  while player.hit_points <= 0 && gameover == false
    puts "You return to your dojo in shame... Your master asks you to commit seppuku..."
    puts
    if seppuku_chance < 50
      puts "#{player.name}: This is Kung Fu not feudal Japan... tsk!"
      sleep 2
      puts "Your master demonstrates the infamous Five Point Palm Exploding Heart Technique... Game Over!"
      gameover = true
    else
      puts "At least you don't fail at everything... Game over!"
      gameover = true
    end
  end
end # win & lose conditions

 class Player
 attr_accessor :hand
 def initialize(hand)
 @hand=(hand)
 end 
 def hand
  return @hand
end
end

 class Enemy
 attr_accessor :hand
 def initialize(hand)
    @hand=hand
 end
 def hand
     return @hand
end
end

class Janken
    attr_accessor :player_hand,:enemy_hand
    def initialize(player_hand,enemy_hand)
    @player_hand=player_hand
    @enemy_hand=enemy_hand

    end
    def pon(player_hand,enemy_hand)
  display=(player_hand - enemy_hand +3)%3
  if(display==2)
    return "win"
  elsif(display==1)
    return "loose"
  else
return "draw"
  end
end
end

while(true) do

puts "please select one among these following:"
puts "0: Goo"
puts "1: Choki"
puts "2: Par"
entered_number=gets.to_i
if(entered_number<0 || entered_number>3)
	puts "not specified range in game"
else
	player = Player.new(entered_number)
	array_range=[0,1,2]
	enemy_randomly=array_range[rand(array_range.count)];
	enemy = Enemy.new(enemy_randomly)
	janken = Janken.new(player,enemy)
	puts " it is a #{janken.pon(player.hand,enemy.hand)}"
end
end


        


 class Player
 
 def hand

  puts "enter the number you want"
  hand=gets.to_i
  while hand < 0 || hand > 3 do
    puts "out of range try gain"
    hand=gets.to_i
  end

      hand=gets.to_i
       puts ("number choosen is #{hand}") 
       hand
end
end

 class Enemy
 def hand
 random_choice_from_enemy=rand(0..2)
 puts "random value is #{random_choice_from_enemy}"
 random_choice_from_enemy
end
end

class Janken
   
    def pon(player_hand,enemy_hand)
  display=(player_hand - enemy_hand +3)%3
  if(display==2)
    puts "you are a winner"
  elsif(display==1)
   puts  " you are looser"

 else
  puts "draw out do a gain"
    player = Player.new
	  enemy = Enemy.new
	  janken = Janken.new
	  janken.pon(player.hand, enemy.hand)
  end
end
end
player = Player.new
	  enemy = Enemy.new
	  janken = Janken.new
	  janken.pon(player.hand, enemy.hand)



        


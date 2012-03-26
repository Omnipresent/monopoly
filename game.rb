$LOAD_PATH.unshift( File.join( File.dirname(__FILE__)) )
require 'dice'
require 'property'
require 'board'
require 'monopoly'
require 'player'


player = Player.new
10.times do 
  puts player.roll_dice + " = #{player.dice_total}"
  player.prev_pos = player.cur_pos
  player.cur_pos = (player.cur_pos + player.dice_total)%40
  puts "#{player.prev_landed_on} -------------> #{player.landed_on}"
  if (player.cur_pos == 7) or (player.cur_pos == 22) or (player.cur_pos == 36)
    chance_card = player.chance_cards(player.cur_pos)
    puts "Got Chance Card: " + chance_card[:text].to_s
    if chance_card[:new_position] != nil
      player.cur_pos = chance_card[:new_position] 
      puts "Moved to: #{player.landed_on}"
    end
  end
end
player.get_land_count

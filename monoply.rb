module Dice
  def roll_dice
    @dice = {:dice1 => 1+rand(6), :dice2 => 1+rand(6)}
    return "[#{@dice[:dice1]}] [#{@dice[:dice2]}]"
  end

  def dice_total
    @dice.inject(0){|sum,hash| sum + hash[1]}
  end
end

module Board
    BOARD = Hash.new
    BOARD[0] = {:name => "Go", :price=>nil, :color=>nil, :rent=>nil}
    BOARD[1] = {:name => "Mediterranean Avenue", :price=>60, :color=>"purple", :rent=>10}
    BOARD[2] = {:name => "Community Chest", :price=>nil, :color=>nil, :rent=>nil}
    BOARD[3] = {:name => "Baltic Avenue", :price=>60, :color=>"purple", :rent=>15}
    BOARD[4] = {:name => "Income Tax", :price=>nil, :color=>nil, :rent=>200}
    BOARD[5] = {:name => "Reading Railroad", :price=>200, :color=>"white", :rent=>5}
    BOARD[6] = {:name => "Oriental Avenue", :price=>100, :color=>"light blue", :rent=>44}
    BOARD[7] = {:name => "Chance", :price=>nil, :color=>nil, :rent=>nil}
    BOARD[8] = {:name => "Vermont Avenue", :price=>100, :color=>"light blue", :rent=>25}
    BOARD[9] = {:name => "Connecticut Avenue", :price=>120, :color=>"light blue", :rent=>35}
    BOARD[10] = {:name => "Jail", :price=>nil, :color=>nil, :rent=>nil}
    BOARD[11] = {:name => "St. Charles Place", :price=>140, :color=>"dark purple", :rent=>35}
    BOARD[12] = {:name => "Electric Company", :price=>140, :color=>"dark purple", :rent=>35}
    BOARD[13] = {:name => "States Avenue", :price=>140, :color=>"dark purple", :rent=>35}
    BOARD[14] = {:name => "Virginia Avenuew", :price=>160, :color=>"dark purple", :rent=>35}
    BOARD[15] = {:name => "Pennsylvania Railroad", :price=>200, :color=>"white", :rent=>35}
    BOARD[16] = {:name => "St. James Place", :price=>180, :color=>"orange", :rent=>35}
    BOARD[17] = {:name => "Community Chest", :price=>nil, :color=>nil, :rent=>nil}
    BOARD[18] = {:name => "Tenessee Avenue", :price=>180, :color=>"orange", :rent=>35}
    BOARD[19] = {:name => "New York Avenue", :price=>200, :color=>"orange", :rent=>35}
    BOARD[20] = {:name => "Free Parking", :price=>nil, :color=>nil, :rent=>nil}
    BOARD[21] = {:name => "Kentucky Avenue", :price=>220, :color=>"red", :rent=>nil}
    BOARD[22] = {:name => "Chance", :price=>nil, :color=>nil, :rent=>nil}
    BOARD[23] = {:name => "Indiana Avenue", :price=>220, :color=>"red", :rent=>35}
    BOARD[24] = {:name => "Illinois Avenue", :price=>220, :color=>"red", :rent=>35}
    BOARD[25] = {:name => "B&O Railroad", :price=>200, :color=>"white", :rent=>45}
    BOARD[26] = {:name => "Atlantic Avenue", :price=>260, :color=>"yellow", :rent=>55}
    BOARD[27] = {:name => "Ventnor Avenue", :price=>260, :color=>"yellow", :rent=>55}
    BOARD[28] = {:name => "Water Works", :price=>150, :color=>"white", :rent=>25}
    BOARD[29] = {:name => "Marvin Gardens", :price=>280, :color=>"yellow", :rent=>25}
    BOARD[30] = {:name => "Jail", :price=>nil, :color=>nil, :rent=>24}
    BOARD[31] = {:name => "Pacific Avenue", :price=>300, :color=>"green", :rent=>24}
    BOARD[32] = {:name => "North Carolina Avenue", :price=>300, :color=>"green", :rent=>24}
    BOARD[33] = {:name => "Community Chest", :price=>nil, :color=>nil, :rent=>24}
    BOARD[34] = {:name => "Pennsylvania Avenue", :price=>320, :color=>"green", :rent=>24}
    BOARD[35] = {:name => "Short Line", :price=>200, :color=>"white", :rent=>24}
    BOARD[36] = {:name => "Chance", :price=>nil, :color=>nil, :rent=>24}
    BOARD[37] = {:name => "Park Place", :price=>350, :color=>"blue", :rent=>50}
    BOARD[38] = {:name => "Luxury Tax", :price=>nil, :color=>nil, :rent=>75}
    BOARD[39] = {:name => "Board Walk", :price=>400, :color=>"blue", :rent=>24}
end

class Monopoly
  include Dice

  def game_board
    Board::BOARD
  end
  def chance_cards (cur_pos)
    chance = Hash.new
    chance[0] = {:text => "Advance to Go (Collect $200)", :new_position => 0}
    chance[1] = {:text => "Advance to Illinois Ave - If you pass Go, collect $200", :new_position => 24}
    chance[2] = {:text => "Advance token to nearest Utility.", :new_position =>}
    Proc.new do |cur_pos|
      
    end
  end
end

class Player < Monopoly
  attr_accessor :cur_pos, :landed_on, :prev_pos
  def cur_pos
    @cur_pos ||= 0
  end
end


player = Player.new
2.times do 
  puts player.roll_dice + " = #{player.dice_total}"
  player.prev_pos = player.game_board[player.cur_pos][:name]
  player.cur_pos = player.cur_pos + player.dice_total
  player.landed_on = player.game_board[player.cur_pos][:name]
  puts "#{player.prev_pos} -------------> #{player.landed_on}"
end

chance = Proc.new do |cur_pos|
  case Kernel.rand(3)
    when 0
      puts "0"
    when 1
      puts "1"
    when 2
      puts "2"
    when 3
      puts "3"
  end
end

chance.call(4)


class Player < Monopoly
  include Dice
  attr_accessor :cur_pos, :prev_pos
  def initialize
    Board.setup_board
  end
  def cur_pos
    @cur_pos ||= 0
  end
  def landed_on
    game_board[@cur_pos].land
    game_board[@cur_pos].name.to_s
  end
  def prev_landed_on
    game_board[@prev_pos].name.to_s
  end

  def get_land_count
    game_board.each do |property|
      puts "#{property.name} - #{property.times_landed}" if property.times_landed > 0
    end
  end
end

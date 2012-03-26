module Dice
  def roll_dice
    @dice = {:dice1 => 1+rand(6), :dice2 => 1+rand(6)}
    return "[#{@dice[:dice1]}] [#{@dice[:dice2]}]"
  end

  def dice_total
    @dice.inject(0){|sum,hash| sum + hash[1]}
  end
end

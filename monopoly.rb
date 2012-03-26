class Monopoly  
  def game_board
    Board::PROPERTIES
  end

  def property_index(property_name)
    game_board.index{|x| x.name == property_name}
  end

  def chance_cards (cur_pos)
    chance_card = rand(Board::CHANCE.size)
    case chance_card
      when 2
        if (cur_pos < property_index("Electric_Company")) or (cur_pos >= property_index("Water_Works"))
          Board::CHANCE[2][:new_position] = property_index("Electric_Company")
        elsif (cur_pos < water_works_index) or (cur_pos >= electric_company_index)
          Board::CHANCE[2][:new_position] = property_index("Water_Works")
        end
      when 3
        case cur_pos
          when 7
            Board::CHANCE[3][:new_position] = property_index("Pennsylvania Road")
          when 22
            Board::CHANCE[3][:new_position] = property_index("B&O_Railroad")
          when 36
            Board::CHANCE[3][:new_position] = property_index("Reading_Railroad")
        end
      when 7
        Board::CHANCE[7][:new_position] = cur_pos - 3
    end
    Board::CHANCE[chance_card]
  end
end

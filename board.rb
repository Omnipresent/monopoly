class Board 
    PROPERTY_NAMES = %w{GO Mediterranean_Avenue Community_Chest Baltic_Avenue Income_Tax Reading_Railroad Oriental_Avenue Chance Vermont_Avenue Connecticut_Avenue
    Jail  St._Charles_Place Electric_Company States_Avenue Virginia_Avenue Pennsylvania_Railroad St._James_Place Community_Chest Tenessee_Avenue
    NewYork_Avenue Free_Parking Kentucky_Avenue Chance Indiana_Avenue Illinois_Avenue B&O_Railroad Atlantic_Avenue Ventnor_Avenue Water_Works
    Marvin_Gardens Jail Pacific_Avenue North_Carolina_Avenue Community_Chest Pennsylvania_Avenue Short_Line Chance Park_Place Luxury_Tax Board_Walk
    }
    PROPERTIES = Array.new
    def self.setup_board
      PROPERTY_NAMES.each_with_index do |prop,index|
        PROPERTIES[index] = Property.new(prop)
      end
      PROPERTIES
    end

    CHANCE = Hash.new
    CHANCE[0] = {:text => "Advance to Go (Collect $200)", :new_position => 0}
    CHANCE[1] = {:text => "Advance to Illinois Ave - If you pass Go, collect $200", :new_position => 24}
    CHANCE[2] = {:text => "Advance token to nearest Utility.", :new_position => nil}
    CHANCE[3] = {:text => "Advance token to nearest Railroad.", :new_position => nil}
    CHANCE[4] = {:text => "Advance to st. charles place", :new_position => 11}
    CHANCE[5] = {:text => "Bank pays you dividend of $50", :new_position => nil}
    CHANCE[6] = {:text => "Get out of jail free card", :new_position => nil}
    CHANCE[7] = {:text => "Go back 3 spaces", :new_position => nil}
    CHANCE[8] = {:text => "Go to jail", :new_position => 30}
    CHANCE[9] = {:text => "Make general repairs on all properties", :new_position => nil}
    CHANCE[10] = {:text => "Pay poor tax of $15", :new_position => nil}
    CHANCE[11] = {:text => "Take a trip to reading railroad", :new_position => 5}
    CHANCE[12] = {:text => "Take a walk on the boardwalk", :new_position => 39}
    CHANCE[13] = {:text => "Elected chairman of the board", :new_position => nil}
    CHANCE[14] = {:text => "Building loan matures", :new_position => nil}
    CHANCE[15] = {:text => "Won crossword competion", :new_position=> nil}
end

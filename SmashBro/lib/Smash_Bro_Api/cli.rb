class Cli
    def start
        puts "            ..    ......       "
        puts "         .....    ..........   "
        puts "       .......    ............ "
        puts "       WELCOME    TO SMASH!!!! "
        puts "       .......    ............ "
        puts "                               "
        puts "         .....    ..........   "
        puts "            ..    ......       "
        puts " __________________________________"
        puts " ----> CHOOSE YOUR CHARACTER <-----"
        puts " __________________________________"
        Api.get_data
    main_menu_options
    end
    def main_menu_options
        puts "input '+' for list of Characters"
        puts "input 'x' to exit program"
        main_menu
    end
    def main_menu
        input = get_input
        if input == "+"
            character_list
        elsif input == "x"
            exit
        else 
            main_menu_options
        end
    end

    def character_list
        SmashBro.all.each.with_index(1) do |smash, index|
            puts "#{index}. #{smash.name}"
        end
        choose_your_character
    end

    def get_input
        print "What would you like to do?"
        gets.chomp
    end

    def character_guide(smashbro)
        puts "Character: #{smashbro.name}"
        puts "Guide: #{smashbro.guide}"
        puts "Tier: #{smashbro.tierdata}"
        puts "Weight: #{smashbro.weight}"
    end

    def choose_your_character
        puts "Choose Your Character!"
        character_guide_input
    end
    

    def character_guide_input
        input = get_input
        index = input.to_i - 1
        smashbro = SmashBro.all[index]
        if index.between?(0, 26)
            character_guide(smashbro)
            main_menu_options
        else
            puts "Character Locked! (Invalid Response)"
            character_guide_input
        end
    end
end



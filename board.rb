class Board

  attr_reader :cases

  def initialize()
    @cases = [
      ["-","-","-"],
      ["-","-","-"],
      ["-","-","-"],
    ]
  end

  def display()
    @cases.each_with_index do |ligne_tableau, index_ligne|
      # puts "#{index_ligne} : #{ligne_tableau}"
      puts "----+----+-----"
      ligne_tableau.each_with_index do |colonne_tableau, index_colonne|
        print " #{colonne_tableau}  |"
      end
      puts
    end
    puts "----+----+-----"
  end

  def update(row_index, col_index, sign)
    if @cases[row_index][col_index] == "-"
      @cases[row_index][col_index] = sign
    else
      puts "Try again..."
    end
  end
end

require_relative 'board'
require_relative 'player'

class Game

  attr_reader :players, :board

  def initialize()
    puts "*Initialisation du jeu*"
    puts
    @players = Array.new()
    players = Array.new
    players_sign = ["x", "o"]


    2.times do |player_index|
      print "   Veuillez entrer le nom du #{player_index+1}er joueur : "
      sleep 0.1
      name = gets.chomp.capitalize
      players[player_index+1] = Player.new(name, players_sign[player_index])
      puts "   #{players[player_index+1].name}, vous jouez avec les : #{players_sign[player_index]} "
      puts
      sleep 0.1
    end

    puts "*Ajout du plateau !* "
    puts
    @board = Board.new()
    @board.display
    puts
  end

  def play()
    i = 0
    while true
      i += 1
      puts "----------- Tour #{i} ------------"
      # saisie_utilisateur = gets.chomp
      puts
      print "Veuillez entrer la ligne   (1 - 2 - 3) : "
      row_index = gets.chomp.to_i
      if row_index > 3
        puts "NO WAY"
      else
        row_index -= 1
        print "Veuillez entrer la colonne (1 - 2 - 3) : "
        col_index = gets.chomp.to_i
        if col_index > 3
          puts "NO WAY"
        else
          col_index -=1
          board.update(row_index,col_index,"z")
        end
        puts
        @board.display()
        puts
      end
      # p saisie_utilisateur
    end
  end

  def end?
    
  end

end

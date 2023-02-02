# rubocop:disable Lint/DuplicateBranch
class Board
  attr_accessor :tictactoe

  def initialize(name0, name1)
    @tictactoe = [[" ", " ", " "], [" ", " ", " "], [" ", " ", " "]]
    @player_to_symbol = { name0 => "X".colorize(:red), name1 => "O".colorize(:blue) }
    
  end

  def add(spot, name)
    row, col = find(spot)
    @tictactoe[row][col] = @player_to_symbol[name]
  end

  def taken?(spot)
    row, col = find(spot)
    @tictactoe[row][col] != " "
  end

  def show
    puts
    puts "        1   2   3"
    puts "      ╭―――――――――――╮"
    puts "    A │ #{@tictactoe[0][0]} | #{@tictactoe[0][1]} | #{@tictactoe[0][2]} │"
    puts "      │-----------│"
    puts "    B │ #{@tictactoe[1][0]} | #{@tictactoe[1][1]} | #{@tictactoe[1][2]} │"
    puts "      │-----------│"
    puts "    C │ #{@tictactoe[2][0]} | #{@tictactoe[2][1]} | #{@tictactoe[2][2]} │"
    puts "      ╰―――――――――――╯"
    puts
  end

  def win?
    if (@tictactoe[0][0] == @tictactoe[0][1]) && (@tictactoe[0][0] == @tictactoe[0][2]) && (@tictactoe[0][2] != " ")
      true
    elsif (@tictactoe[1][0] == @tictactoe[1][1]) && (@tictactoe[1][0] == @tictactoe[1][2]) && (@tictactoe[1][2] != " ")
      true
    elsif (@tictactoe[2][0] == @tictactoe[2][1]) && (@tictactoe[2][0] == @tictactoe[2][2]) && (@tictactoe[2][2] != " ")
      true
    elsif (@tictactoe[0][0] == @tictactoe[1][0]) && (@tictactoe[0][0] == @tictactoe[2][0]) && (@tictactoe[2][0] != " ")
      true
    elsif (@tictactoe[0][1] == @tictactoe[1][1]) && (@tictactoe[0][1] == @tictactoe[2][1]) && (@tictactoe[0][1] != " ")
      true
    elsif (@tictactoe[0][2] == @tictactoe[1][2]) && (@tictactoe[0][2] == @tictactoe[2][2]) && (@tictactoe[2][2] != " ")
      true
    elsif (@tictactoe[0][0] == @tictactoe[1][1]) && (@tictactoe[0][0] == @tictactoe[2][2]) && (@tictactoe[0][0] != " ")
      true
    elsif (@tictactoe[0][2] == @tictactoe[1][1]) && (@tictactoe[0][2] == @tictactoe[2][0]) && (@tictactoe[0][2] != " ")
      true
    else
      false
    end
  end

  def find(spot)
    case spot
    when "a1"
      [0, 0]
    when "a2"
      [0, 1]
    when "a3"
      [0, 2]
    when "b1"
      [1, 0]
    when "b2"
      [1, 1]
    when "b3"
      [1, 2]
    when "c1"
      [2, 0]
    when "c2"
      [2, 1]
    when "c3"
      [2, 2]
    end
  end

  def not_full?
    possibilities = ["a1", "a2", "a3", "b1", "b2", "b3", "c1", "c2", "c3"]
    possibilities.each { |cell|
      return true unless taken?(cell)
    }
    false
  end
end

# rubocop:enable Lint/DuplicateBranch


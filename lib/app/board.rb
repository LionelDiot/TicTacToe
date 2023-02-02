class Board
  attr_accessor :tictactoe

  def initialize(name1, name2)
    @tictactoe = [[" ", "1", " ", "2", " ", "3"], ["A", " ", "|", " ", "|", " "], [" ", "-", "+", "-", "+", "-"], ["B", " ", "|", " ", "|", " "], [" ", "-", "+", "-", "+", "-"], ["C", " ", "|", " ", "|", " "]]
    @player_to_symbol = { name1 => "X", name2 => "O" }
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
    @tictactoe.each { |line|
      line.each { |cell|
        print cell
      }
      puts
    }
  end

  def win?
    if (@tictactoe[1][1] == @tictactoe[1][3]) && (@tictactoe[1][1] == @tictactoe[1][5]) && (@tictactoe[1][5] != " ")
      true
    elsif (@tictactoe[3][1] == @tictactoe[3][3]) && (@tictactoe[3][1] == @tictactoe[3][5]) && (@tictactoe[3][5] != " ")
      true
    elsif (@tictactoe[5][1] == @tictactoe[5][3]) && (@tictactoe[5][1] == @tictactoe[5][5]) && (@tictactoe[5][5] != " ")
      true
    elsif (@tictactoe[1][1] == @tictactoe[3][1]) && (@tictactoe[1][1] == @tictactoe[5][1]) && (@tictactoe[5][1] != " ")
      true
    elsif (@tictactoe[1][3] == @tictactoe[3][3]) && (@tictactoe[1][3] == @tictactoe[5][3]) && (@tictactoe[1][3] != " ")
      true
    elsif (@tictactoe[1][5] == @tictactoe[3][5]) && (@tictactoe[1][5] == @tictactoe[5][5]) && (@tictactoe[5][5] != " ")
      true
    elsif (@tictactoe[1][1] == @tictactoe[3][3]) && (@tictactoe[1][1] == @tictactoe[5][5]) && (@tictactoe[1][1] != " ")
      true
    elsif (@tictactoe[1][5] == @tictactoe[3][3]) && (@tictactoe[1][5] == @tictactoe[5][1]) && (@tictactoe[1][5] != " ")
      true
    else
      false
    end
  end

  def find(spot)
    case spot
    when "a1"
      [1, 1]
    when "a2"
      [1, 3]
    when "a3"
      [1, 5]
    when "b1"
      [3, 1]
    when "b2"
      [3, 3]
    when "b3"
      [3, 5]
    when "c1"
      [5, 1]
    when "c2"
      [5, 3]
    when "c3"
      [5, 5]
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

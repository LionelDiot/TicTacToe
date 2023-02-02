class Done
  def initialize(winner, loser)
    puts "Bravo #{winner} !"
    puts "MDR #{loser} tu devrais avoir honte ><"
    puts "Press y to play again ! Anything else will exist !"
    answer = gets.chomp
    answer == "y" ? Index.new : exit
  end
end
class Done
  def initialize(winner, loser, state)
    state.show
    puts "_" * 6
    puts
    puts "Bravo #{winner} !"
    puts "MDR #{loser} tu devrais avoir honte ><"
    puts "Press y to play again ! Anything else will exit !"
    answer = gets.chomp
    answer == "y" ? Index.new : exit
  end
end
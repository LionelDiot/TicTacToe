class Done
  def initialize(winner, loser, state)
    state.show
    puts "_" * 6
    puts
    puts "Congratulations #{winner} 😎 !"
    puts
    puts "_" * 12
    puts
    puts " #{loser} YOU SUCK 🤮🤮🤮"
    gets.chomp
    puts "Press y to play again ! Anything else will exit !"
    answer = gets.chomp
    answer == "y" ? Index.new : exit
  end
end
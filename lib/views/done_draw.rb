class DoneDraw
  def initialize(state)
    state.show
    puts "_" * 6
    puts
    puts " Dommage c'est une égalité !"
    puts "Press y to play again ! Anything else will exit !"
    answer = gets.chomp
    answer == "y" ? Index.new : exit
  end
end

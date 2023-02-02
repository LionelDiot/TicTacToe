class DoneDraw
  def initialize
    puts
    puts "-" * 20
    puts " Dommage c'est une égalité !"
    puts "Press y to play again ! Anything else will exist !"
    answer = gets.chomp
    answer == "y" ? Index.new : exit
  end
end

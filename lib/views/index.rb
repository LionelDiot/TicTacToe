class Index
  
  def initialize
    system "clear"
    system "reset"
    puts "Welcome to my first TicTacToe Game !"
    puts "-" * 36
    puts "This game is for 2 players :"
    print "Give me the first player's name : "
    name1 = gets.chomp
    print "Give me the second player's name : "
    name2 = gets.chomp
    Game.new(name1, name2)
  end
end

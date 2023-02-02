class Game
  attr_accessor :name1, :name2, :state

  def initialize(name1, name2)
    @name1 = name1
    @name2 = name2
    puts "This is what the board looks like :"
    @state = Board.new(@name1, @name2)
    @state.show
    puts "You play by giving me the combination for a line and column (ex : a1,b2,c3,etc...)"
    puts "The first player to align 3 X or O in a line column or diagonal, wins the game"
    print "Press Enter when ready to start the game !"
    gets.chomp
    system "clear"
    system "reset"
    game_progress
  end

  def game_progress
    # uneven nb of cells so i check if the board is full after every first player turn
    playerturn(@name1)
    system "clear"
    system "reset"
    while @state.not_full?
      playerturn(@name2)
      system "clear"
      system "reset"
      Done.new(@name2, @name1, @state) if @state.win?
      playerturn(@name1)
      system "clear"
      system "reset"
      Done.new(@name1, @name2, @state) if @state.win?
    end
    DoneDraw.new
  end

  def playerturn(name)
    puts
    puts "#{name}, it's your turn, where do you want to play ? (ex : a1,b2,c3,etc...)"
    @state.show
    spot = ""
    while !["a1", "a2", "a3", "b1", "b2", "b3", "c1", "c2", "c3"].include?(spot)
      print ">"
      spot = gets.chomp
      puts "Enter a possible spot on the board (ex : a1,b2,c3,etc...)" if !["a1", "a2", "a3", "b1", "b2", "b3", "c1", "c2", "c3"].include?(spot)
    end
    if @state.taken?(spot)
      puts "You cheater! that spot is already taken, try to play somewhere else !"
      print "Press Enter to try again"
      gets.chomp
      system "clear"
      system "reset"
      playerturn(name)
    else
    @state.add(spot, name)
    end
  end
end

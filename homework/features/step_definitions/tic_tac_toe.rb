class TicTacToe
  attr_accessor :board, :player, :player_symbol, :cpu_sign, :openSpots,  :player_move, :winsequence
  attr_reader :player
  SYMBOLS = [:X, :O]

  def initialize(first_player = " ", user_symbol = " ")
    @board = {
        :A1 => " " , :A2 => " ", :A3 => " ",
        :B1 => " ", :B2 => " ", :B3 => " ",
        :C1 => " ", :C2 => " ", :C3 => " "
    }
    @winsequence = {
        :A => [:A1,:A2,:A3], :B => [:B1,:B2,:B3], :C => [:C1,:C2,:C3],
        :D => [:A1,:B1,:C1], :E =>[:A2,:B2,:C2], :F => [:A3,:B3,:C3],
        :G=>[:C1, :B2, :A3], :H=>[:A1,:B2,:C3]}

    if (first_player != " ")
      @player = first_player.to_s.capitalize
    end
    symbol_select(user_symbol)
  end

  def player=(name)
    @player = name
    if (@player == "Player")
      @player = name
    end
    #name
  end

  def current_state
    @board.values
  end

  def computer_move
    randomSpot = random(@openSpots.count)
    @board[@openSpots[randomSpot]] = @cpu_sign.to_s
    @openSpots[randomSpot]
  end

  def determine_winner
    player_plays = @board.reject {|k,v| v != @player_symbol}.keys
    computer_plays = @board.reject {|k,v| v != @cpu_sign}.keys
    @winsequence.each_value{|v|
      if v.include?(player_plays)
        player_won?
      elsif v.include?(computer_plays)
        computer_won?
      else
        draw?
      end
    }
  end

  def computer_won?
    true
    over?
  end

  def player_won?
    true
    over?
  end

  def spots_open?
    open_spots
    !(@openSpots.empty?)
  end

  def over?
    true
  end

  def draw?
    true
  end

  def player_move
    @player_move = get_player_move.to_sym
    open_spots
    if (@openSpots.include?(@player_move))
      @board[@player_move] = @player_symbol.to_s
    else
      @player_move = get_player_move.to_sym
    end
    @player_move
  end

  def open_spots
    #openSpots is an array of Symbols (keys of board hash)
    @openSpots = @board.reject {|k,v| v != " "}.keys
  end

  def get_player_move
    move = gets
  end

  def indicate_player_turn
    puts "#{@player}'s Move:"
  end

  def order_select
    selectPlayer = random(2)
    if selectPlayer.even?
      @player = @player
    else
      @player = "Computer"
    end
  end

  def symbol_select(user_symbol)
    if user_symbol == " "
      selectSymbol = random(2)
      if selectSymbol.even?
        @player_symbol = :X
        @cpu_sign = :O
      else
        @player_symbol = :O
        @cpu_sign = :X
      end
    else
      @player_symbol = user_symbol
      symbolLeft = SYMBOLS.delete_if {|x| x == user_symbol}
      @cpu_sign = symbolLeft[0]
    end
  end

  def welcome_player
    order_select
    "Welcome #{@player}"
  end

  def random(range)
    rand(range)
  end
end
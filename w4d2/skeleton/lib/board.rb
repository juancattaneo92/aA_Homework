class Board
  attr_accessor :cups

  def initialize(name1, name2)
      @name1 = name1
      @name2 = name2
      @cups = Array.new(14) { Array.new(0) }

  end

  def place_stones
    # helper method to #initialize every non-store cup with four stones each
  end

  def valid_move?(start_pos)

    raise 'Invalid starting cup' if start_pos < 0 || start_pos > 12
    raise 'Starting cup is empty' if @cups[start_pos] == 0
  end

  def make_move(start_pos, current_player_name)
  end

  def next_turn(ending_cup_idx)
    # helper method to determine whether #make_move returns :switch, :prompt, or ending_cup_idx
  end

  def render
    print "      #{@cups[7..12].reverse.map { |cup| cup.count }}      \n"
    puts "#{@cups[13].count} -------------------------- #{@cups[6].count}"
    print "      #{@cups.take(6).map { |cup| cup.count }}      \n"
    puts ""
    puts ""
  end

  def one_side_empty?
    @cups[0..6].all? { |cup| cup.empty? } || @cups[7..12].all? { |cup| cup.empty?}

  end

  def winner
      player1 = @cups[6].count
      player2 = @cups[13].count

    if player1 == player2
      return :draw
    else
        if player1 < player2
          @name2 
        else
          @name1
        end
    end
  end
  
end

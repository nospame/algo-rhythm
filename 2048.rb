class Game
  def initialize
    @board = Board.new
    @board.print_board
  end
end

class Board
  def initialize
    @board = [
      [2, 4, 0, 2],
      [0, 2, 2, 0],
      [0, 0, 8, 0],
      [0, 4, 0, 8]
    ]
    @added = 0
  end

  def print_board
    puts "------------"
    @board.each { |row| p row }
  end

  def swipe(row)
    row.select! { |num| num != 0 }

    row.each_with_index do |num, i|
      if row[i + 1] == num
        row[i] = num * 2
        row.delete_at(i + 1)
      end
    end

    row
  end

  def fill_row(row)
    until row.length == 4
      if @added == 0
        row.push([0, 2].sample)
      else
        row.push(0)
      end
      @added += 1 if row.last == 2
    end
    row
  end

  def swipe_left
    @added = 0
    @board.map do |row|
      swipe(row)
      fill_row(row)
    end

    @board
  end

  def swipe_right
    @added = 0
    @board.map do |row|
      row.reverse!
      swipe(row)
      fill_row(row).reverse!
    end

    @board
  end

  def swipe_up
    @added = 0
    @board = @board.transpose
    @board.map do |row|
      swipe(row)
      fill_row(row)
    end

    @board = @board.transpose
  end

  def swipe_down
    @added = 0
    @board = @board.transpose
    @board.map do |row|
      row.reverse!
      swipe(row)
      fill_row(row).reverse!
    end

    @board = @board.transpose
  end

end

board = Board.new
board.print_board

board.swipe_left
board.print_board

board.swipe_right
board.print_board

board.swipe_up
board.print_board

board.swipe_down
board.print_board

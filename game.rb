puts "Welcome to Tic Tac Toe Game!"

def show_the_grid(x_values = nil, o_values =nil)
  i = 0
  3.times do
    3.times do |j|
      current = i+j+1
      if x_values.include? current
        print "|X"
      elsif o_values.include? current
        print "|O"
      else
        print "|#{current}"
      end
    end
    print "|\n"
    i +=3
  end
end

x_moves = []
o_moves = []

show_the_grid x_moves, o_moves
x_moves << gets.to_i
show_the_grid(x_moves, o_moves)
o_moves << gets.to_i
show_the_grid(x_moves, o_moves)
x_moves << gets.to_i
show_the_grid(x_moves, o_moves)

puts "Welcome to Tic Tac Toe Game!"

def show_the_grid(x_value = nil, o_value =nil)
  i = 0
  3.times do
    3.times do |j|
      current = i+j+1
      if current == x_value
        print "|X"
      elsif o_value == current
        print "|O"
      else
        print "|#{current}"
      end
    end
    print "|\n"
    i +=3
  end
end

show_the_grid
x_value = gets.to_i
show_the_grid(x_value)
o_value = gets.to_i
show_the_grid(x_value, o_value)

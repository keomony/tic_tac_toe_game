puts "Welcome to Tic Tac Toe Game!"

def show_the_grid(value = nil)
  i = 0
  3.times do
    3.times do |j|
      if i+j+1 == value
        print "|X"
      else
        print "|#{i+j+1}"
      end
    end
    print "|\n"
    i +=3
  end
end

show_the_grid
value = gets.to_i
show_the_grid(value)

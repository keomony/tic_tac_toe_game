require 'pty'

describe "game features" do

  it "should start the game " do
    PTY.spawn('ruby game.rb') do |output, input|
      expect(output.readline).to include("Welcome to Tic Tac Toe Game!")
    end
  end
  it "should show 3 by 3 grid" do
    PTY.spawn('ruby game.rb') do |output, input|
      output.readline
      expect(output.readline.chomp).to eq("|1|2|3|")
      expect(output.readline.chomp).to eq("|4|5|6|")
      expect(output.readline.chomp).to eq("|7|8|9|")
    end
  end

  it "first user makes a move" do
    PTY.spawn('ruby game.rb') do |output, input|
      4.times do
        output.readline
      end
      input.puts "2"
      output.readline
      expect(output.readline.chomp).to eq("|1|X|3|")
      expect(output.readline.chomp).to eq("|4|5|6|")
      expect(output.readline.chomp).to eq("|7|8|9|")
    end
  end

  it "second user makes a move" do
    PTY.spawn('ruby game.rb') do |output, input|
      4.times do
        output.readline
      end
      input.puts "2"
      4.times do
        output.readline
      end
      input.puts "6"
      output.readline
      expect(output.readline.chomp).to eq("|1|X|3|")
      expect(output.readline.chomp).to eq("|4|5|O|")
      expect(output.readline.chomp).to eq("|7|8|9|")
    end
  end

  it "second move for first user" do
    PTY.spawn('ruby game.rb') do |output, input|
      4.times {output.readline}
      input.puts "2"; output.readline
      3.times {output.readline}
      input.puts "6"; output.readline
      3.times {output.readline}
      input.puts "8"; output.readline

      expect(output.readline.chomp).to eq("|1|X|3|")
      expect(output.readline.chomp).to eq("|4|5|O|")
      expect(output.readline.chomp).to eq("|7|X|9|")
    end
  end

  it "second move from second user" do
    PTY.spawn('ruby game.rb') do |output, input|
      4.times {output.readline}
      input.puts "2"; output.readline
      3.times {output.readline}
      input.puts "6"; output.readline
      3.times {output.readline}
      input.puts "8"; output.readline
      3.times {output.readline}
      input.puts "5"; output.readline

      expect(output.readline.chomp).to eq("|1|X|3|")
      expect(output.readline.chomp).to eq("|4|O|O|")
      expect(output.readline.chomp).to eq("|7|X|9|")
    end
  end

  xit "user can not mark used square" do

  end

end

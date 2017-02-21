describe "game features" do
  it "should start the game " do
    output = `ruby game.rb`
    expect(output).to include("Welcome to Tic Tac Toe Game!")
  end
  it "should show 3 by 3 grid" do
    output = `ruby game.rb`
    expect(output).to include("| | | |\n| | | |\n| | | |")
  end
end

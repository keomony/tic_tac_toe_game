require './lib/game'

describe "Tic Tac Toe Game" do
  let(:player1) { Player.new('X') }
  let(:player2) { Player.new('Y') }
  subject(:game) { described_class.new(player1,player2)}

  it "should have two players" do
    expect(game).to respond_to(:new).with(2).arguments
  end
end

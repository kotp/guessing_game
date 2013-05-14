require './test/test_helper'

describe "Getting player name" do
  before do
    @my_game =  GuessingGame.new('George', 1000)
  end

  it 'should get player name' do
    @my_game.player_name.must_equal 'George'
  end

  it 'should report true when the target number is guessed'
end

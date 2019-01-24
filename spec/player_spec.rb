require 'player'

describe 'the player class' do

  it 'can return its name' do
    test_name = "Kwaku"
    player = Player.new(test_name)
    player.name == test_name
    end
end
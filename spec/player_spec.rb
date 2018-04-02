require 'rspec'
require 'player'

describe Player do
  let(:deck) { Deck.new }
  subject(:player) { Player.new("Chris", deck) }

  describe '#initialize' do
    it 'gives the player a name' do
      expect(player.name).to eq('Chris')
    end
  end

end

# FILEPATH: /Users/johnmichaelmitre/Documents/GitHub/MapleFarming/spec/models/farming_datum_spec.rb

require 'rails_helper'

RSpec.describe FarmingDatum, type: :model do
  let(:farming_datum) { FarmingDatum.new }

  it 'should belong to character' do
    expect(farming_datum).to respond_to(:character)
  end

  it 'should belong to map' do
    expect(farming_datum).to respond_to(:map)
  end
end

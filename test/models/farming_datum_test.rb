require 'test_helper'

class FarmingDatumTest < ActiveSupport::TestCase
  test 'should belong to character' do
    farming_datum = FarmingDatum.new
    assert_respond_to farming_datum, :character
  end

  test 'should belong to map' do
    farming_datum = FarmingDatum.new
    assert_respond_to farming_datum, :map
  end
end

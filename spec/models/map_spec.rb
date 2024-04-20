require 'rails_helper'

RSpec.describe Map, type: :model do
  context 'validation tests' do
    it 'ensures name presence' do
      map = Map.new(minimumLevel: 1, prerequisite: false).save
      expect(map).to eq(false)
    end

    it 'ensures minimumLevel presence' do
      map = Map.new(name: 'Test', prerequisite: false).save
      expect(map).to eq(false)
    end

    it 'should save successfully' do
      map = Map.new(name: 'Test', minimumLevel: 1, prerequisite: false).save
      expect(map).to eq(true)
    end
  end
end

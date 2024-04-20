require 'rails_helper'

RSpec.describe 'Character', type: :model do
  context 'validation tests' do
    it 'ensures classname presence' do
      character = Character.new(level: 1, range: 1).save
      expect(character).to eq(false)
    end

    it 'ensures level presence' do
      character = Character.new(classname: 'Test', range: 1).save
      expect(character).to eq(false)
    end

    it 'ensures range presence' do
      character = Character.new(classname: 'Test', level: 1).save
      expect(character).to eq(false)
    end

    it 'should save successfully' do
      character = Character.new(classname: 'Test', level: 1, range: 1).save
      expect(character).to eq(true)
    end
  end

  context 'functional association tests' do
    it 'should have many farming_data' do
      character = Character.reflect_on_association(:farming_data)
      expect(character.macro).to eq(:has_many)
    end
  end
end

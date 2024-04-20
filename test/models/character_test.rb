# The Character model is tested here. The tests are:
# 1. Should have farming data
# 2. Should validate presence of classname
# 3. Should validate presence of level
# 4. Should validate presence of range
require "test_helper"

class CharacterTest < ActiveSupport::TestCase
  test "should have farming data" do
    character = Character.new
    assert_respond_to character, :farming_data
  end

  test "should validate presence of classname" do
    character = Character.new
    assert_not character.valid?
    assert_includes character.errors[:classname], "can't be blank"
  end

  test "should validate presence of level" do
    character = Character.new
    assert_not character.valid?
    assert_includes character.errors[:level], "can't be blank"
  end

  test "should validate presence of range" do
    character = Character.new
    assert_not character.valid?
    assert_includes character.errors[:range], "can't be blank"
  end
end
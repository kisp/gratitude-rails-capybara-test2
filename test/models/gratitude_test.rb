require "test_helper"

class GratitudeTest < ActiveSupport::TestCase
  test "valid gratitude" do
    gratitude = Gratitude.new(title: "Sunshine", body: "Grateful for sun today")
    assert gratitude.valid?
  end

  test "invalid without title" do
    gratitude = Gratitude.new(body: "Grateful for sun today")
    assert_not gratitude.valid?
    assert_includes gratitude.errors[:title], "can't be blank"
  end

  test "invalid without body" do
    gratitude = Gratitude.new(title: "Sunshine")
    assert_not gratitude.valid?
    assert_includes gratitude.errors[:body], "can't be blank"
  end

  test "invalid without title and body" do
    gratitude = Gratitude.new
    assert_not gratitude.valid?
    assert_equal 2, gratitude.errors.count
  end
end

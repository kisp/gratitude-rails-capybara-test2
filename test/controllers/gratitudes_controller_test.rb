require "test_helper"

class GratitudesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @gratitude = gratitudes(:one)
  end

  test "should get index" do
    get gratitudes_url
    assert_response :success
  end

  test "should get new" do
    get new_gratitude_url
    assert_response :success
  end

  test "should create gratitude" do
    assert_difference("Gratitude.count") do
      post gratitudes_url, params: { gratitude: { body: "Grateful for tests", title: "Testing" } }
    end

    assert_redirected_to gratitude_url(Gratitude.last)
  end

  test "should not create gratitude without title" do
    assert_no_difference("Gratitude.count") do
      post gratitudes_url, params: { gratitude: { body: "Some body", title: "" } }
    end

    assert_response :unprocessable_entity
  end

  test "should show gratitude" do
    get gratitude_url(@gratitude)
    assert_response :success
  end

  test "should get edit" do
    get edit_gratitude_url(@gratitude)
    assert_response :success
  end

  test "should update gratitude" do
    patch gratitude_url(@gratitude), params: { gratitude: { body: @gratitude.body, title: @gratitude.title } }
    assert_redirected_to gratitude_url(@gratitude)
  end

  test "should destroy gratitude" do
    assert_difference("Gratitude.count", -1) do
      delete gratitude_url(@gratitude)
    end

    assert_redirected_to gratitudes_url
  end
end

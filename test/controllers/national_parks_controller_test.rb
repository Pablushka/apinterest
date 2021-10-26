require "test_helper"

class NationalParksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @national_park = national_parks(:one)
  end

  test "should get index" do
    get national_parks_url, as: :json
    assert_response :success
  end

  test "should create national_park" do
    assert_difference('NationalPark.count') do
      post national_parks_url, params: { national_park: { name: @national_park.name } }, as: :json
    end

    assert_response 201
  end

  test "should show national_park" do
    get national_park_url(@national_park), as: :json
    assert_response :success
  end

  test "should update national_park" do
    patch national_park_url(@national_park), params: { national_park: { name: @national_park.name } }, as: :json
    assert_response 200
  end

  test "should destroy national_park" do
    assert_difference('NationalPark.count', -1) do
      delete national_park_url(@national_park), as: :json
    end

    assert_response 204
  end
end

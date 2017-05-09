require 'test_helper'

class AdvertsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @advert = adverts(:one)
  end

  test "should get index" do
    get adverts_url
    assert_response :success
  end

  test "should get new" do
    get new_advert_url
    assert_response :success
  end

  test "should create advert" do
    assert_difference('Advert.count') do
      post adverts_url, params: { advert: { advert_description: @advert.advert_description, advert_image: @advert.advert_image, advert_location: @advert.advert_location, advert_period: @advert.advert_period, advert_sticker_location: @advert.advert_sticker_location, advert_title: @advert.advert_title, business_name: @advert.business_name, business_number: @advert.business_number, payout_per_mile: @advert.payout_per_mile, user_id: @advert.user_id } }
    end

    assert_redirected_to advert_url(Advert.last)
  end

  test "should show advert" do
    get advert_url(@advert)
    assert_response :success
  end

  test "should get edit" do
    get edit_advert_url(@advert)
    assert_response :success
  end

  test "should update advert" do
    patch advert_url(@advert), params: { advert: { advert_description: @advert.advert_description, advert_image: @advert.advert_image, advert_location: @advert.advert_location, advert_period: @advert.advert_period, advert_sticker_location: @advert.advert_sticker_location, advert_title: @advert.advert_title, business_name: @advert.business_name, business_number: @advert.business_number, payout_per_mile: @advert.payout_per_mile, user_id: @advert.user_id } }
    assert_redirected_to advert_url(@advert)
  end

  test "should destroy advert" do
    assert_difference('Advert.count', -1) do
      delete advert_url(@advert)
    end

    assert_redirected_to adverts_url
  end
end

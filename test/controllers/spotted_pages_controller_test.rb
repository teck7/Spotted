require 'test_helper'

class SpottedPagesControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get spotted_pages_home_url
    assert_response :success
  end

  test "should get faq" do
    get spotted_pages_faq_url
    assert_response :success
  end

end

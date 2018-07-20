require 'test_helper'

class GifticonControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get gifticon_index_url
    assert_response :success
  end

  test "should get new" do
    get gifticon_new_url
    assert_response :success
  end

  test "should get creat" do
    get gifticon_creat_url
    assert_response :success
  end

  test "should get show" do
    get gifticon_show_url
    assert_response :success
  end

  test "should get updata" do
    get gifticon_updata_url
    assert_response :success
  end

  test "should get destroy" do
    get gifticon_destroy_url
    assert_response :success
  end

  test "should get edit" do
    get gifticon_edit_url
    assert_response :success
  end

end

require 'test_helper'

class DraftPicsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @draft_pic = draft_pics(:one)
  end

  test "should get index" do
    get draft_pics_url
    assert_response :success
  end

  test "should get new" do
    get new_draft_pic_url
    assert_response :success
  end

  test "should create draft_pic" do
    assert_difference('DraftPic.count') do
      post draft_pics_url, params: { draft_pic: { pic_file: @draft_pic.pic_file } }
    end

    assert_redirected_to draft_pic_url(DraftPic.last)
  end

  test "should show draft_pic" do
    get draft_pic_url(@draft_pic)
    assert_response :success
  end

  test "should get edit" do
    get edit_draft_pic_url(@draft_pic)
    assert_response :success
  end

  test "should update draft_pic" do
    patch draft_pic_url(@draft_pic), params: { draft_pic: { pic_file: @draft_pic.pic_file } }
    assert_redirected_to draft_pic_url(@draft_pic)
  end

  test "should destroy draft_pic" do
    assert_difference('DraftPic.count', -1) do
      delete draft_pic_url(@draft_pic)
    end

    assert_redirected_to draft_pics_url
  end
end

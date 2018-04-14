require 'test_helper'

class SamplePicsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sample_pic = sample_pics(:one)
  end

  test "should get index" do
    get sample_pics_url
    assert_response :success
  end

  test "should get new" do
    get new_sample_pic_url
    assert_response :success
  end

  test "should create sample_pic" do
    assert_difference('SamplePic.count') do
      post sample_pics_url, params: { sample_pic: { pic_file: @sample_pic.pic_file } }
    end

    assert_redirected_to sample_pic_url(SamplePic.last)
  end

  test "should show sample_pic" do
    get sample_pic_url(@sample_pic)
    assert_response :success
  end

  test "should get edit" do
    get edit_sample_pic_url(@sample_pic)
    assert_response :success
  end

  test "should update sample_pic" do
    patch sample_pic_url(@sample_pic), params: { sample_pic: { pic_file: @sample_pic.pic_file } }
    assert_redirected_to sample_pic_url(@sample_pic)
  end

  test "should destroy sample_pic" do
    assert_difference('SamplePic.count', -1) do
      delete sample_pic_url(@sample_pic)
    end

    assert_redirected_to sample_pics_url
  end
end

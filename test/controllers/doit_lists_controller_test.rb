require 'test_helper'

class DoitListsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @doit_list = doit_lists(:one)
  end

  test "should get index" do
    get doit_lists_url
    assert_response :success
  end

  test "should get new" do
    get new_doit_list_url
    assert_response :success
  end

  test "should create doit_list" do
    assert_difference('DoitList.count') do
      post doit_lists_url, params: { doit_list: { description: @doit_list.description, title: @doit_list.title } }
    end

    assert_redirected_to doit_list_url(DoitList.last)
  end

  test "should show doit_list" do
    get doit_list_url(@doit_list)
    assert_response :success
  end

  test "should get edit" do
    get edit_doit_list_url(@doit_list)
    assert_response :success
  end

  test "should update doit_list" do
    patch doit_list_url(@doit_list), params: { doit_list: { description: @doit_list.description, title: @doit_list.title } }
    assert_redirected_to doit_list_url(@doit_list)
  end

  test "should destroy doit_list" do
    assert_difference('DoitList.count', -1) do
      delete doit_list_url(@doit_list)
    end

    assert_redirected_to doit_lists_url
  end
end

require 'test_helper'

class BeautifiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @beautify = beautifies(:one)
  end

  test "should get index" do
    get beautifies_url
    assert_response :success
  end

  test "should get new" do
    get new_beautify_url
    assert_response :success
  end

  test "should create beautify" do
    assert_difference('Beautify.count') do
      post beautifies_url, params: { beautify: { content: @beautify.content } }
    end

    assert_redirected_to beautify_url(Beautify.last)
  end

  test "should show beautify" do
    get beautify_url(@beautify)
    assert_response :success
  end

  test "should get edit" do
    get edit_beautify_url(@beautify)
    assert_response :success
  end

  test "should update beautify" do
    patch beautify_url(@beautify), params: { beautify: { content: @beautify.content } }
    assert_redirected_to beautify_url(@beautify)
  end

  test "should destroy beautify" do
    assert_difference('Beautify.count', -1) do
      delete beautify_url(@beautify)
    end

    assert_redirected_to beautifies_url
  end
end

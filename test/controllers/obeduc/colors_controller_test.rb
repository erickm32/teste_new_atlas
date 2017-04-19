require 'test_helper'

class Obeduc::ColorsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @obeduc_color = obeduc_colors(:one)
  end

  test "should get index" do
    get obeduc_colors_url
    assert_response :success
  end

  test "should get new" do
    get new_obeduc_color_url
    assert_response :success
  end

  test "should create obeduc_color" do
    assert_difference('Obeduc::Color.count') do
      post obeduc_colors_url, params: { obeduc_color: { hex_color: @obeduc_color.hex_color, tag: @obeduc_color.tag } }
    end

    assert_redirected_to obeduc_color_url(Obeduc::Color.last)
  end

  test "should show obeduc_color" do
    get obeduc_color_url(@obeduc_color)
    assert_response :success
  end

  test "should get edit" do
    get edit_obeduc_color_url(@obeduc_color)
    assert_response :success
  end

  test "should update obeduc_color" do
    patch obeduc_color_url(@obeduc_color), params: { obeduc_color: { hex_color: @obeduc_color.hex_color, tag: @obeduc_color.tag } }
    assert_redirected_to obeduc_color_url(@obeduc_color)
  end

  test "should destroy obeduc_color" do
    assert_difference('Obeduc::Color.count', -1) do
      delete obeduc_color_url(@obeduc_color)
    end

    assert_redirected_to obeduc_colors_url
  end
end

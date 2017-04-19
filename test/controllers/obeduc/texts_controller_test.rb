require 'test_helper'

class Obeduc::TextsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @obeduc_text = obeduc_texts(:one)
  end

  test "should get index" do
    get obeduc_texts_url
    assert_response :success
  end

  test "should get new" do
    get new_obeduc_text_url
    assert_response :success
  end

  test "should create obeduc_text" do
    assert_difference('Obeduc::Text.count') do
      post obeduc_texts_url, params: { obeduc_text: { codigo_texto: @obeduc_text.codigo_texto, texto_full: @obeduc_text.texto_full } }
    end

    assert_redirected_to obeduc_text_url(Obeduc::Text.last)
  end

  test "should show obeduc_text" do
    get obeduc_text_url(@obeduc_text)
    assert_response :success
  end

  test "should get edit" do
    get edit_obeduc_text_url(@obeduc_text)
    assert_response :success
  end

  test "should update obeduc_text" do
    patch obeduc_text_url(@obeduc_text), params: { obeduc_text: { codigo_texto: @obeduc_text.codigo_texto, texto_full: @obeduc_text.texto_full } }
    assert_redirected_to obeduc_text_url(@obeduc_text)
  end

  test "should destroy obeduc_text" do
    assert_difference('Obeduc::Text.count', -1) do
      delete obeduc_text_url(@obeduc_text)
    end

    assert_redirected_to obeduc_texts_url
  end
end

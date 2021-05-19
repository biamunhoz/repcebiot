require 'test_helper'

class FundosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @fundo = fundos(:one)
  end

  test "should get index" do
    get fundos_url
    assert_response :success
  end

  test "should get new" do
    get new_fundo_url
    assert_response :success
  end

  test "should create fundo" do
    assert_difference('Fundo.count') do
      post fundos_url, params: { fundo: { nome: @fundo.nome } }
    end

    assert_redirected_to fundo_url(Fundo.last)
  end

  test "should show fundo" do
    get fundo_url(@fundo)
    assert_response :success
  end

  test "should get edit" do
    get edit_fundo_url(@fundo)
    assert_response :success
  end

  test "should update fundo" do
    patch fundo_url(@fundo), params: { fundo: { nome: @fundo.nome } }
    assert_redirected_to fundo_url(@fundo)
  end

  test "should destroy fundo" do
    assert_difference('Fundo.count', -1) do
      delete fundo_url(@fundo)
    end

    assert_redirected_to fundos_url
  end
end

require 'test_helper'

class LinhagemsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @linhagem = linhagems(:one)
  end

  test "should get index" do
    get linhagems_url
    assert_response :success
  end

  test "should get new" do
    get new_linhagem_url
    assert_response :success
  end

  test "should create linhagem" do
    assert_difference('Linhagem.count') do
      post linhagems_url, params: { linhagem: { nome: @linhagem.nome } }
    end

    assert_redirected_to linhagem_url(Linhagem.last)
  end

  test "should show linhagem" do
    get linhagem_url(@linhagem)
    assert_response :success
  end

  test "should get edit" do
    get edit_linhagem_url(@linhagem)
    assert_response :success
  end

  test "should update linhagem" do
    patch linhagem_url(@linhagem), params: { linhagem: { nome: @linhagem.nome } }
    assert_redirected_to linhagem_url(@linhagem)
  end

  test "should destroy linhagem" do
    assert_difference('Linhagem.count', -1) do
      delete linhagem_url(@linhagem)
    end

    assert_redirected_to linhagems_url
  end
end

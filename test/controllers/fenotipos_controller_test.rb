require 'test_helper'

class FenotiposControllerTest < ActionDispatch::IntegrationTest
  setup do
    @fenotipo = fenotipos(:one)
  end

  test "should get index" do
    get fenotipos_url
    assert_response :success
  end

  test "should get new" do
    get new_fenotipo_url
    assert_response :success
  end

  test "should create fenotipo" do
    assert_difference('Fenotipo.count') do
      post fenotipos_url, params: { fenotipo: { nome: @fenotipo.nome } }
    end

    assert_redirected_to fenotipo_url(Fenotipo.last)
  end

  test "should show fenotipo" do
    get fenotipo_url(@fenotipo)
    assert_response :success
  end

  test "should get edit" do
    get edit_fenotipo_url(@fenotipo)
    assert_response :success
  end

  test "should update fenotipo" do
    patch fenotipo_url(@fenotipo), params: { fenotipo: { nome: @fenotipo.nome } }
    assert_redirected_to fenotipo_url(@fenotipo)
  end

  test "should destroy fenotipo" do
    assert_difference('Fenotipo.count', -1) do
      delete fenotipo_url(@fenotipo)
    end

    assert_redirected_to fenotipos_url
  end
end

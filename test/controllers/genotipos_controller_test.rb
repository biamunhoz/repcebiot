require 'test_helper'

class GenotiposControllerTest < ActionDispatch::IntegrationTest
  setup do
    @genotipo = genotipos(:one)
  end

  test "should get index" do
    get genotipos_url
    assert_response :success
  end

  test "should get new" do
    get new_genotipo_url
    assert_response :success
  end

  test "should create genotipo" do
    assert_difference('Genotipo.count') do
      post genotipos_url, params: { genotipo: { nome: @genotipo.nome } }
    end

    assert_redirected_to genotipo_url(Genotipo.last)
  end

  test "should show genotipo" do
    get genotipo_url(@genotipo)
    assert_response :success
  end

  test "should get edit" do
    get edit_genotipo_url(@genotipo)
    assert_response :success
  end

  test "should update genotipo" do
    patch genotipo_url(@genotipo), params: { genotipo: { nome: @genotipo.nome } }
    assert_redirected_to genotipo_url(@genotipo)
  end

  test "should destroy genotipo" do
    assert_difference('Genotipo.count', -1) do
      delete genotipo_url(@genotipo)
    end

    assert_redirected_to genotipos_url
  end
end

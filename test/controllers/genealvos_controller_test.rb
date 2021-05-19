require 'test_helper'

class GenealvosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @genealvo = genealvos(:one)
  end

  test "should get index" do
    get genealvos_url
    assert_response :success
  end

  test "should get new" do
    get new_genealvo_url
    assert_response :success
  end

  test "should create genealvo" do
    assert_difference('Genealvo.count') do
      post genealvos_url, params: { genealvo: { nomeoficial: @genealvo.nomeoficial, simbolo: @genealvo.simbolo, sitereferencia: @genealvo.sitereferencia } }
    end

    assert_redirected_to genealvo_url(Genealvo.last)
  end

  test "should show genealvo" do
    get genealvo_url(@genealvo)
    assert_response :success
  end

  test "should get edit" do
    get edit_genealvo_url(@genealvo)
    assert_response :success
  end

  test "should update genealvo" do
    patch genealvo_url(@genealvo), params: { genealvo: { nomeoficial: @genealvo.nomeoficial, simbolo: @genealvo.simbolo, sitereferencia: @genealvo.sitereferencia } }
    assert_redirected_to genealvo_url(@genealvo)
  end

  test "should destroy genealvo" do
    assert_difference('Genealvo.count', -1) do
      delete genealvo_url(@genealvo)
    end

    assert_redirected_to genealvos_url
  end
end

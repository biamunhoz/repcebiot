require 'test_helper'

class OrigemsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @origem = origems(:one)
  end

  test "should get index" do
    get origems_url
    assert_response :success
  end

  test "should get new" do
    get new_origem_url
    assert_response :success
  end

  test "should create origem" do
    assert_difference('Origem.count') do
      post origems_url, params: { origem: { endereco: @origem.endereco, instituicao: @origem.instituicao, observacao: @origem.observacao, sigla: @origem.sigla } }
    end

    assert_redirected_to origem_url(Origem.last)
  end

  test "should show origem" do
    get origem_url(@origem)
    assert_response :success
  end

  test "should get edit" do
    get edit_origem_url(@origem)
    assert_response :success
  end

  test "should update origem" do
    patch origem_url(@origem), params: { origem: { endereco: @origem.endereco, instituicao: @origem.instituicao, observacao: @origem.observacao, sigla: @origem.sigla } }
    assert_redirected_to origem_url(@origem)
  end

  test "should destroy origem" do
    assert_difference('Origem.count', -1) do
      delete origem_url(@origem)
    end

    assert_redirected_to origems_url
  end
end

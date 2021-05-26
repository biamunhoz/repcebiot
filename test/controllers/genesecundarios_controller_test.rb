require 'test_helper'

class GenesecundariosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @genesecundario = genesecundarios(:one)
  end

  test "should get index" do
    get genesecundarios_url
    assert_response :success
  end

  test "should get new" do
    get new_genesecundario_url
    assert_response :success
  end

  test "should create genesecundario" do
    assert_difference('Genesecundario.count') do
      post genesecundarios_url, params: { genesecundario: { genealvo_id: @genesecundario.genealvo_id, geneassociado_id: @genesecundario.geneassociado_id } }
    end

    assert_redirected_to genesecundario_url(Genesecundario.last)
  end

  test "should show genesecundario" do
    get genesecundario_url(@genesecundario)
    assert_response :success
  end

  test "should get edit" do
    get edit_genesecundario_url(@genesecundario)
    assert_response :success
  end

  test "should update genesecundario" do
    patch genesecundario_url(@genesecundario), params: { genesecundario: { genealvo_id: @genesecundario.genealvo_id, geneassociado_id: @genesecundario.geneassociado_id } }
    assert_redirected_to genesecundario_url(@genesecundario)
  end

  test "should destroy genesecundario" do
    assert_difference('Genesecundario.count', -1) do
      delete genesecundario_url(@genesecundario)
    end

    assert_redirected_to genesecundarios_url
  end
end

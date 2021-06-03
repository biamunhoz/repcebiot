require 'test_helper'

class RepositoriosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @repositorio = repositorios(:one)
  end

  test "should get index" do
    get repositorios_url
    assert_response :success
  end

  test "should get new" do
    get new_repositorio_url
    assert_response :success
  end

  test "should create repositorio" do
    assert_difference('Repositorio.count') do
      post repositorios_url, params: { repositorio: { anoiniciocolonia: @repositorio.anoiniciocolonia, bioterio_id: @repositorio.bioterio_id, cqb: @repositorio.cqb, fenotipo_id: @repositorio.fenotipo_id, genealvo_id: @repositorio.genealvo_id, genotipo_id: @repositorio.genotipo_id, linkrefconstr: @repositorio.linkrefconstr, metodoacasalamento: @repositorio.metodoacasalamento, nivelseguranca: @repositorio.nivelseguranca, origem_id: @repositorio.origem_id } }
    end

    assert_redirected_to repositorio_url(Repositorio.last)
  end

  test "should show repositorio" do
    get repositorio_url(@repositorio)
    assert_response :success
  end

  test "should get edit" do
    get edit_repositorio_url(@repositorio)
    assert_response :success
  end

  test "should update repositorio" do
    patch repositorio_url(@repositorio), params: { repositorio: { anoiniciocolonia: @repositorio.anoiniciocolonia, bioterio_id: @repositorio.bioterio_id, cqb: @repositorio.cqb, fenotipo_id: @repositorio.fenotipo_id, genealvo_id: @repositorio.genealvo_id, genotipo_id: @repositorio.genotipo_id, linkrefconstr: @repositorio.linkrefconstr, metodoacasalamento: @repositorio.metodoacasalamento, nivelseguranca: @repositorio.nivelseguranca, origem_id: @repositorio.origem_id } }
    assert_redirected_to repositorio_url(@repositorio)
  end

  test "should destroy repositorio" do
    assert_difference('Repositorio.count', -1) do
      delete repositorio_url(@repositorio)
    end

    assert_redirected_to repositorios_url
  end
end

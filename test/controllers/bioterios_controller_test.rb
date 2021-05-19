require 'test_helper'

class BioteriosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @bioterio = bioterios(:one)
  end

  test "should get index" do
    get bioterios_url
    assert_response :success
  end

  test "should get new" do
    get new_bioterio_url
    assert_response :success
  end

  test "should create bioterio" do
    assert_difference('Bioterio.count') do
      post bioterios_url, params: { bioterio: { idcuica: @bioterio.idcuica, local: @bioterio.local, origem_id: @bioterio.origem_id, unidade: @bioterio.unidade } }
    end

    assert_redirected_to bioterio_url(Bioterio.last)
  end

  test "should show bioterio" do
    get bioterio_url(@bioterio)
    assert_response :success
  end

  test "should get edit" do
    get edit_bioterio_url(@bioterio)
    assert_response :success
  end

  test "should update bioterio" do
    patch bioterio_url(@bioterio), params: { bioterio: { idcuica: @bioterio.idcuica, local: @bioterio.local, origem_id: @bioterio.origem_id, unidade: @bioterio.unidade } }
    assert_redirected_to bioterio_url(@bioterio)
  end

  test "should destroy bioterio" do
    assert_difference('Bioterio.count', -1) do
      delete bioterio_url(@bioterio)
    end

    assert_redirected_to bioterios_url
  end
end

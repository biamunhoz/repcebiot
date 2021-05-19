require 'test_helper'

class PrimersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @primer = primers(:one)
  end

  test "should get index" do
    get primers_url
    assert_response :success
  end

  test "should get new" do
    get new_primer_url
    assert_response :success
  end

  test "should create primer" do
    assert_difference('Primer.count') do
      post primers_url, params: { primer: { descricao: @primer.descricao, geldeacarose: @primer.geldeacarose, protocolopcr: @primer.protocolopcr } }
    end

    assert_redirected_to primer_url(Primer.last)
  end

  test "should show primer" do
    get primer_url(@primer)
    assert_response :success
  end

  test "should get edit" do
    get edit_primer_url(@primer)
    assert_response :success
  end

  test "should update primer" do
    patch primer_url(@primer), params: { primer: { descricao: @primer.descricao, geldeacarose: @primer.geldeacarose, protocolopcr: @primer.protocolopcr } }
    assert_redirected_to primer_url(@primer)
  end

  test "should destroy primer" do
    assert_difference('Primer.count', -1) do
      delete primer_url(@primer)
    end

    assert_redirected_to primers_url
  end
end

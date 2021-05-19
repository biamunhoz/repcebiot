require "application_system_test_case"

class OrigemsTest < ApplicationSystemTestCase
  setup do
    @origem = origems(:one)
  end

  test "visiting the index" do
    visit origems_url
    assert_selector "h1", text: "Origems"
  end

  test "creating a Origem" do
    visit origems_url
    click_on "New Origem"

    fill_in "Endereco", with: @origem.endereco
    fill_in "Instituicao", with: @origem.instituicao
    fill_in "Observacao", with: @origem.observacao
    fill_in "Sigla", with: @origem.sigla
    click_on "Create Origem"

    assert_text "Origem was successfully created"
    click_on "Back"
  end

  test "updating a Origem" do
    visit origems_url
    click_on "Edit", match: :first

    fill_in "Endereco", with: @origem.endereco
    fill_in "Instituicao", with: @origem.instituicao
    fill_in "Observacao", with: @origem.observacao
    fill_in "Sigla", with: @origem.sigla
    click_on "Update Origem"

    assert_text "Origem was successfully updated"
    click_on "Back"
  end

  test "destroying a Origem" do
    visit origems_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Origem was successfully destroyed"
  end
end

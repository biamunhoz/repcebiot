require "application_system_test_case"

class FundosTest < ApplicationSystemTestCase
  setup do
    @fundo = fundos(:one)
  end

  test "visiting the index" do
    visit fundos_url
    assert_selector "h1", text: "Fundos"
  end

  test "creating a Fundo" do
    visit fundos_url
    click_on "New Fundo"

    fill_in "Nome", with: @fundo.nome
    click_on "Create Fundo"

    assert_text "Fundo was successfully created"
    click_on "Back"
  end

  test "updating a Fundo" do
    visit fundos_url
    click_on "Edit", match: :first

    fill_in "Nome", with: @fundo.nome
    click_on "Update Fundo"

    assert_text "Fundo was successfully updated"
    click_on "Back"
  end

  test "destroying a Fundo" do
    visit fundos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Fundo was successfully destroyed"
  end
end

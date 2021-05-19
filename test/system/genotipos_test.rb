require "application_system_test_case"

class GenotiposTest < ApplicationSystemTestCase
  setup do
    @genotipo = genotipos(:one)
  end

  test "visiting the index" do
    visit genotipos_url
    assert_selector "h1", text: "Genotipos"
  end

  test "creating a Genotipo" do
    visit genotipos_url
    click_on "New Genotipo"

    fill_in "Nome", with: @genotipo.nome
    click_on "Create Genotipo"

    assert_text "Genotipo was successfully created"
    click_on "Back"
  end

  test "updating a Genotipo" do
    visit genotipos_url
    click_on "Edit", match: :first

    fill_in "Nome", with: @genotipo.nome
    click_on "Update Genotipo"

    assert_text "Genotipo was successfully updated"
    click_on "Back"
  end

  test "destroying a Genotipo" do
    visit genotipos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Genotipo was successfully destroyed"
  end
end

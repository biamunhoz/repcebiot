require "application_system_test_case"

class FenotiposTest < ApplicationSystemTestCase
  setup do
    @fenotipo = fenotipos(:one)
  end

  test "visiting the index" do
    visit fenotipos_url
    assert_selector "h1", text: "Fenotipos"
  end

  test "creating a Fenotipo" do
    visit fenotipos_url
    click_on "New Fenotipo"

    fill_in "Nome", with: @fenotipo.nome
    click_on "Create Fenotipo"

    assert_text "Fenotipo was successfully created"
    click_on "Back"
  end

  test "updating a Fenotipo" do
    visit fenotipos_url
    click_on "Edit", match: :first

    fill_in "Nome", with: @fenotipo.nome
    click_on "Update Fenotipo"

    assert_text "Fenotipo was successfully updated"
    click_on "Back"
  end

  test "destroying a Fenotipo" do
    visit fenotipos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Fenotipo was successfully destroyed"
  end
end

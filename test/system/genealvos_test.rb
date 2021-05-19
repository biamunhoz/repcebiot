require "application_system_test_case"

class GenealvosTest < ApplicationSystemTestCase
  setup do
    @genealvo = genealvos(:one)
  end

  test "visiting the index" do
    visit genealvos_url
    assert_selector "h1", text: "Genealvos"
  end

  test "creating a Genealvo" do
    visit genealvos_url
    click_on "New Genealvo"

    fill_in "Nomeoficial", with: @genealvo.nomeoficial
    fill_in "Simbolo", with: @genealvo.simbolo
    fill_in "Sitereferencia", with: @genealvo.sitereferencia
    click_on "Create Genealvo"

    assert_text "Genealvo was successfully created"
    click_on "Back"
  end

  test "updating a Genealvo" do
    visit genealvos_url
    click_on "Edit", match: :first

    fill_in "Nomeoficial", with: @genealvo.nomeoficial
    fill_in "Simbolo", with: @genealvo.simbolo
    fill_in "Sitereferencia", with: @genealvo.sitereferencia
    click_on "Update Genealvo"

    assert_text "Genealvo was successfully updated"
    click_on "Back"
  end

  test "destroying a Genealvo" do
    visit genealvos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Genealvo was successfully destroyed"
  end
end

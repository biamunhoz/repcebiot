require "application_system_test_case"

class GenesecundariosTest < ApplicationSystemTestCase
  setup do
    @genesecundario = genesecundarios(:one)
  end

  test "visiting the index" do
    visit genesecundarios_url
    assert_selector "h1", text: "Genesecundarios"
  end

  test "creating a Genesecundario" do
    visit genesecundarios_url
    click_on "New Genesecundario"

    fill_in "Genealvo", with: @genesecundario.genealvo_id
    fill_in "Geneassociado", with: @genesecundario.geneassociado_id
    click_on "Create Genesecundario"

    assert_text "Genesecundario was successfully created"
    click_on "Back"
  end

  test "updating a Genesecundario" do
    visit genesecundarios_url
    click_on "Edit", match: :first

    fill_in "Genealvo", with: @genesecundario.genealvo_id
    fill_in "Geneassociado", with: @genesecundario.geneassociado_id
    click_on "Update Genesecundario"

    assert_text "Genesecundario was successfully updated"
    click_on "Back"
  end

  test "destroying a Genesecundario" do
    visit genesecundarios_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Genesecundario was successfully destroyed"
  end
end

require "application_system_test_case"

class BioteriosTest < ApplicationSystemTestCase
  setup do
    @bioterio = bioterios(:one)
  end

  test "visiting the index" do
    visit bioterios_url
    assert_selector "h1", text: "Bioterios"
  end

  test "creating a Bioterio" do
    visit bioterios_url
    click_on "New Bioterio"

    fill_in "Idcuica", with: @bioterio.idcuica
    fill_in "Local", with: @bioterio.local
    fill_in "Origem", with: @bioterio.origem_id
    fill_in "Unidade", with: @bioterio.unidade
    click_on "Create Bioterio"

    assert_text "Bioterio was successfully created"
    click_on "Back"
  end

  test "updating a Bioterio" do
    visit bioterios_url
    click_on "Edit", match: :first

    fill_in "Idcuica", with: @bioterio.idcuica
    fill_in "Local", with: @bioterio.local
    fill_in "Origem", with: @bioterio.origem_id
    fill_in "Unidade", with: @bioterio.unidade
    click_on "Update Bioterio"

    assert_text "Bioterio was successfully updated"
    click_on "Back"
  end

  test "destroying a Bioterio" do
    visit bioterios_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Bioterio was successfully destroyed"
  end
end

require "application_system_test_case"

class RepositoriosTest < ApplicationSystemTestCase
  setup do
    @repositorio = repositorios(:one)
  end

  test "visiting the index" do
    visit repositorios_url
    assert_selector "h1", text: "Repositorios"
  end

  test "creating a Repositorio" do
    visit repositorios_url
    click_on "New Repositorio"

    fill_in "Anoiniciocolonia", with: @repositorio.anoiniciocolonia
    fill_in "Bioterio", with: @repositorio.bioterio_id
    fill_in "Cqb", with: @repositorio.cqb
    fill_in "Fenotipo", with: @repositorio.fenotipo_id
    fill_in "Genealvo", with: @repositorio.genealvo_id
    fill_in "Genotipo", with: @repositorio.genotipo_id
    fill_in "Linkrefconstr", with: @repositorio.linkrefconstr
    fill_in "Metodoacasalamento", with: @repositorio.metodoacasalamento
    fill_in "Nivelseguranca", with: @repositorio.nivelseguranca
    fill_in "Origem", with: @repositorio.origem_id
    click_on "Create Repositorio"

    assert_text "Repositorio was successfully created"
    click_on "Back"
  end

  test "updating a Repositorio" do
    visit repositorios_url
    click_on "Edit", match: :first

    fill_in "Anoiniciocolonia", with: @repositorio.anoiniciocolonia
    fill_in "Bioterio", with: @repositorio.bioterio_id
    fill_in "Cqb", with: @repositorio.cqb
    fill_in "Fenotipo", with: @repositorio.fenotipo_id
    fill_in "Genealvo", with: @repositorio.genealvo_id
    fill_in "Genotipo", with: @repositorio.genotipo_id
    fill_in "Linkrefconstr", with: @repositorio.linkrefconstr
    fill_in "Metodoacasalamento", with: @repositorio.metodoacasalamento
    fill_in "Nivelseguranca", with: @repositorio.nivelseguranca
    fill_in "Origem", with: @repositorio.origem_id
    click_on "Update Repositorio"

    assert_text "Repositorio was successfully updated"
    click_on "Back"
  end

  test "destroying a Repositorio" do
    visit repositorios_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Repositorio was successfully destroyed"
  end
end

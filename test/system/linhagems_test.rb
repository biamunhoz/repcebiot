require "application_system_test_case"

class LinhagemsTest < ApplicationSystemTestCase
  setup do
    @linhagem = linhagems(:one)
  end

  test "visiting the index" do
    visit linhagems_url
    assert_selector "h1", text: "Linhagems"
  end

  test "creating a Linhagem" do
    visit linhagems_url
    click_on "New Linhagem"

    fill_in "Nome", with: @linhagem.nome
    click_on "Create Linhagem"

    assert_text "Linhagem was successfully created"
    click_on "Back"
  end

  test "updating a Linhagem" do
    visit linhagems_url
    click_on "Edit", match: :first

    fill_in "Nome", with: @linhagem.nome
    click_on "Update Linhagem"

    assert_text "Linhagem was successfully updated"
    click_on "Back"
  end

  test "destroying a Linhagem" do
    visit linhagems_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Linhagem was successfully destroyed"
  end
end

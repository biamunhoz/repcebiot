require "application_system_test_case"

class PrimersTest < ApplicationSystemTestCase
  setup do
    @primer = primers(:one)
  end

  test "visiting the index" do
    visit primers_url
    assert_selector "h1", text: "Primers"
  end

  test "creating a Primer" do
    visit primers_url
    click_on "New Primer"

    fill_in "Descricao", with: @primer.descricao
    fill_in "Geldeacarose", with: @primer.geldeacarose
    fill_in "Protocolopcr", with: @primer.protocolopcr
    click_on "Create Primer"

    assert_text "Primer was successfully created"
    click_on "Back"
  end

  test "updating a Primer" do
    visit primers_url
    click_on "Edit", match: :first

    fill_in "Descricao", with: @primer.descricao
    fill_in "Geldeacarose", with: @primer.geldeacarose
    fill_in "Protocolopcr", with: @primer.protocolopcr
    click_on "Update Primer"

    assert_text "Primer was successfully updated"
    click_on "Back"
  end

  test "destroying a Primer" do
    visit primers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Primer was successfully destroyed"
  end
end

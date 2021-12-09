require "application_system_test_case"

class AssistentesTest < ApplicationSystemTestCase
  setup do
    @assistente = assistentes(:one)
  end

  test "visiting the index" do
    visit assistentes_url
    assert_selector "h1", text: "Assistentes"
  end

  test "creating a Assistente" do
    visit assistentes_url
    click_on "New Assistente"

    fill_in "Chefe", with: @assistente.chefe
    fill_in "Secretaria", with: @assistente.secretaria
    click_on "Create Assistente"

    assert_text "Assistente was successfully created"
    click_on "Back"
  end

  test "updating a Assistente" do
    visit assistentes_url
    click_on "Edit", match: :first

    fill_in "Chefe", with: @assistente.chefe
    fill_in "Secretaria", with: @assistente.secretaria
    click_on "Update Assistente"

    assert_text "Assistente was successfully updated"
    click_on "Back"
  end

  test "destroying a Assistente" do
    visit assistentes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Assistente was successfully destroyed"
  end
end

require "application_system_test_case"

class LooksTest < ApplicationSystemTestCase
  setup do
    @look = looks(:one)
  end

  test "visiting the index" do
    visit looks_url
    assert_selector "h1", text: "Looks"
  end

  test "creating a Look" do
    visit looks_url
    click_on "New Look"

    check "Ativo" if @look.ativo
    fill_in "Calcado", with: @look.calcado_id
    fill_in "Descricao", with: @look.descricao
    fill_in "Ocasiao", with: @look.ocasiao
    click_on "Create Look"

    assert_text "Look was successfully created"
    click_on "Back"
  end

  test "updating a Look" do
    visit looks_url
    click_on "Edit", match: :first

    check "Ativo" if @look.ativo
    fill_in "Calcado", with: @look.calcado_id
    fill_in "Descricao", with: @look.descricao
    fill_in "Ocasiao", with: @look.ocasiao
    click_on "Update Look"

    assert_text "Look was successfully updated"
    click_on "Back"
  end

  test "destroying a Look" do
    visit looks_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Look was successfully destroyed"
  end
end

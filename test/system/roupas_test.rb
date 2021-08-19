require "application_system_test_case"

class RoupasTest < ApplicationSystemTestCase
  setup do
    @roupa = roupas(:one)
  end

  test "visiting the index" do
    visit roupas_url
    assert_selector "h1", text: "Roupas"
  end

  test "creating a Roupa" do
    visit roupas_url
    click_on "New Roupa"

    check "Ativo" if @roupa.ativo
    fill_in "Descricao", with: @roupa.descricao
    fill_in "Marca", with: @roupa.marca
    fill_in "Tamanho", with: @roupa.tamanho
    fill_in "Tipo roupa", with: @roupa.tipo_roupa
    click_on "Create Roupa"

    assert_text "Roupa was successfully created"
    click_on "Back"
  end

  test "updating a Roupa" do
    visit roupas_url
    click_on "Edit", match: :first

    check "Ativo" if @roupa.ativo
    fill_in "Descricao", with: @roupa.descricao
    fill_in "Marca", with: @roupa.marca
    fill_in "Tamanho", with: @roupa.tamanho
    fill_in "Tipo roupa", with: @roupa.tipo_roupa
    click_on "Update Roupa"

    assert_text "Roupa was successfully updated"
    click_on "Back"
  end

  test "destroying a Roupa" do
    visit roupas_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Roupa was successfully destroyed"
  end
end

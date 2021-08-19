require "application_system_test_case"

class CalcadosTest < ApplicationSystemTestCase
  setup do
    @calcado = calcados(:one)
  end

  test "visiting the index" do
    visit calcados_url
    assert_selector "h1", text: "Calcados"
  end

  test "creating a Calcado" do
    visit calcados_url
    click_on "New Calcado"

    check "Ativo" if @calcado.ativo
    fill_in "Descricao", with: @calcado.descricao
    fill_in "Marca", with: @calcado.marca
    fill_in "Tamanho", with: @calcado.tamanho
    fill_in "Tipo calcado", with: @calcado.tipo_calcado
    click_on "Create Calcado"

    assert_text "Calcado was successfully created"
    click_on "Back"
  end

  test "updating a Calcado" do
    visit calcados_url
    click_on "Edit", match: :first

    check "Ativo" if @calcado.ativo
    fill_in "Descricao", with: @calcado.descricao
    fill_in "Marca", with: @calcado.marca
    fill_in "Tamanho", with: @calcado.tamanho
    fill_in "Tipo calcado", with: @calcado.tipo_calcado
    click_on "Update Calcado"

    assert_text "Calcado was successfully updated"
    click_on "Back"
  end

  test "destroying a Calcado" do
    visit calcados_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Calcado was successfully destroyed"
  end
end

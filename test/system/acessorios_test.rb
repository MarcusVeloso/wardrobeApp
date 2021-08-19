require "application_system_test_case"

class AcessoriosTest < ApplicationSystemTestCase
  setup do
    @acessorio = acessorios(:one)
  end

  test "visiting the index" do
    visit acessorios_url
    assert_selector "h1", text: "Acessorios"
  end

  test "creating a Acessorio" do
    visit acessorios_url
    click_on "New Acessorio"

    check "Ativo" if @acessorio.ativo
    fill_in "Descricao", with: @acessorio.descricao
    fill_in "Marca", with: @acessorio.marca
    fill_in "Tamanho", with: @acessorio.tamanho
    fill_in "Tipo acessorio", with: @acessorio.tipo_acessorio
    click_on "Create Acessorio"

    assert_text "Acessorio was successfully created"
    click_on "Back"
  end

  test "updating a Acessorio" do
    visit acessorios_url
    click_on "Edit", match: :first

    check "Ativo" if @acessorio.ativo
    fill_in "Descricao", with: @acessorio.descricao
    fill_in "Marca", with: @acessorio.marca
    fill_in "Tamanho", with: @acessorio.tamanho
    fill_in "Tipo acessorio", with: @acessorio.tipo_acessorio
    click_on "Update Acessorio"

    assert_text "Acessorio was successfully updated"
    click_on "Back"
  end

  test "destroying a Acessorio" do
    visit acessorios_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Acessorio was successfully destroyed"
  end
end

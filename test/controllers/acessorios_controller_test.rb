require "test_helper"

class AcessoriosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @acessorio = acessorios(:one)
  end

  test "should get index" do
    get acessorios_url
    assert_response :success
  end

  test "should get new" do
    get new_acessorio_url
    assert_response :success
  end

  test "should create acessorio" do
    assert_difference('Acessorio.count') do
      post acessorios_url, params: { acessorio: { ativo: @acessorio.ativo, descricao: @acessorio.descricao, marca: @acessorio.marca, tamanho: @acessorio.tamanho, tipo_acessorio: @acessorio.tipo_acessorio } }
    end

    assert_redirected_to acessorio_url(Acessorio.last)
  end

  test "should show acessorio" do
    get acessorio_url(@acessorio)
    assert_response :success
  end

  test "should get edit" do
    get edit_acessorio_url(@acessorio)
    assert_response :success
  end

  test "should update acessorio" do
    patch acessorio_url(@acessorio), params: { acessorio: { ativo: @acessorio.ativo, descricao: @acessorio.descricao, marca: @acessorio.marca, tamanho: @acessorio.tamanho, tipo_acessorio: @acessorio.tipo_acessorio } }
    assert_redirected_to acessorio_url(@acessorio)
  end

  test "should destroy acessorio" do
    assert_difference('Acessorio.count', -1) do
      delete acessorio_url(@acessorio)
    end

    assert_redirected_to acessorios_url
  end
end

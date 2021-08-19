require "test_helper"

class CalcadosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @calcado = calcados(:one)
  end

  test "should get index" do
    get calcados_url
    assert_response :success
  end

  test "should get new" do
    get new_calcado_url
    assert_response :success
  end

  test "should create calcado" do
    assert_difference('Calcado.count') do
      post calcados_url, params: { calcado: { ativo: @calcado.ativo, descricao: @calcado.descricao, marca: @calcado.marca, tamanho: @calcado.tamanho, tipo_calcado: @calcado.tipo_calcado } }
    end

    assert_redirected_to calcado_url(Calcado.last)
  end

  test "should show calcado" do
    get calcado_url(@calcado)
    assert_response :success
  end

  test "should get edit" do
    get edit_calcado_url(@calcado)
    assert_response :success
  end

  test "should update calcado" do
    patch calcado_url(@calcado), params: { calcado: { ativo: @calcado.ativo, descricao: @calcado.descricao, marca: @calcado.marca, tamanho: @calcado.tamanho, tipo_calcado: @calcado.tipo_calcado } }
    assert_redirected_to calcado_url(@calcado)
  end

  test "should destroy calcado" do
    assert_difference('Calcado.count', -1) do
      delete calcado_url(@calcado)
    end

    assert_redirected_to calcados_url
  end
end

require "test_helper"

class RoupasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @roupa = roupas(:one)
  end

  test "should get index" do
    get roupas_url
    assert_response :success
  end

  test "should get new" do
    get new_roupa_url
    assert_response :success
  end

  test "should create roupa" do
    assert_difference('Roupa.count') do
      post roupas_url, params: { roupa: { ativo: @roupa.ativo, descricao: @roupa.descricao, marca: @roupa.marca, tamanho: @roupa.tamanho, tipo_roupa: @roupa.tipo_roupa } }
    end

    assert_redirected_to roupa_url(Roupa.last)
  end

  test "should show roupa" do
    get roupa_url(@roupa)
    assert_response :success
  end

  test "should get edit" do
    get edit_roupa_url(@roupa)
    assert_response :success
  end

  test "should update roupa" do
    patch roupa_url(@roupa), params: { roupa: { ativo: @roupa.ativo, descricao: @roupa.descricao, marca: @roupa.marca, tamanho: @roupa.tamanho, tipo_roupa: @roupa.tipo_roupa } }
    assert_redirected_to roupa_url(@roupa)
  end

  test "should destroy roupa" do
    assert_difference('Roupa.count', -1) do
      delete roupa_url(@roupa)
    end

    assert_redirected_to roupas_url
  end
end

require "test_helper"

class AssistentesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @assistente = assistentes(:one)
  end

  test "should get index" do
    get assistentes_url
    assert_response :success
  end

  test "should get new" do
    get new_assistente_url
    assert_response :success
  end

  test "should create assistente" do
    assert_difference('Assistente.count') do
      post assistentes_url, params: { assistente: { chefe: @assistente.chefe, secretaria: @assistente.secretaria } }
    end

    assert_redirected_to assistente_url(Assistente.last)
  end

  test "should show assistente" do
    get assistente_url(@assistente)
    assert_response :success
  end

  test "should get edit" do
    get edit_assistente_url(@assistente)
    assert_response :success
  end

  test "should update assistente" do
    patch assistente_url(@assistente), params: { assistente: { chefe: @assistente.chefe, secretaria: @assistente.secretaria } }
    assert_redirected_to assistente_url(@assistente)
  end

  test "should destroy assistente" do
    assert_difference('Assistente.count', -1) do
      delete assistente_url(@assistente)
    end

    assert_redirected_to assistentes_url
  end
end

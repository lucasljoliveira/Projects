require 'test_helper'

class PacientesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @paciente = pacientes(:one)
  end

  test "should get index" do
    get pacientes_url
    assert_response :success
  end

  test "should get new" do
    get new_paciente_url
    assert_response :success
  end

  test "should create paciente" do
    assert_difference('Paciente.count') do
      post pacientes_url, params: { paciente: { Pessoa_id: @paciente.Pessoa_id, cuidador: @paciente.cuidador, grau_esco_cuidador: @paciente.grau_esco_cuidador, medico_resp: @paciente.medico_resp } }
    end

    assert_redirected_to paciente_url(Paciente.last)
  end

  test "should show paciente" do
    get paciente_url(@paciente)
    assert_response :success
  end

  test "should get edit" do
    get edit_paciente_url(@paciente)
    assert_response :success
  end

  test "should update paciente" do
    patch paciente_url(@paciente), params: { paciente: { Pessoa_id: @paciente.Pessoa_id, cuidador: @paciente.cuidador, grau_esco_cuidador: @paciente.grau_esco_cuidador, medico_resp: @paciente.medico_resp } }
    assert_redirected_to paciente_url(@paciente)
  end

  test "should destroy paciente" do
    assert_difference('Paciente.count', -1) do
      delete paciente_url(@paciente)
    end

    assert_redirected_to pacientes_url
  end
end

require "application_system_test_case"

class FuncionariosTest < ApplicationSystemTestCase
  setup do
    @funcionario = funcionarios(:one)
  end

  test "visiting the index" do
    visit funcionarios_url
    assert_selector "h1", text: "Funcionarios"
  end

  test "creating a Funcionario" do
    visit funcionarios_url
    click_on "New Funcionario"

    fill_in "Pessoa", with: @funcionario.Pessoa_id
    fill_in "Num Crefito", with: @funcionario.num_crefito
    click_on "Create Funcionario"

    assert_text "Funcionario was successfully created"
    click_on "Back"
  end

  test "updating a Funcionario" do
    visit funcionarios_url
    click_on "Edit", match: :first

    fill_in "Pessoa", with: @funcionario.Pessoa_id
    fill_in "Num Crefito", with: @funcionario.num_crefito
    click_on "Update Funcionario"

    assert_text "Funcionario was successfully updated"
    click_on "Back"
  end

  test "destroying a Funcionario" do
    visit funcionarios_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Funcionario was successfully destroyed"
  end
end

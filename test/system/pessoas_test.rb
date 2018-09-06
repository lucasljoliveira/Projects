require "application_system_test_case"

class PessoasTest < ApplicationSystemTestCase
  setup do
    @pessoa = pessoas(:one)
  end

  test "visiting the index" do
    visit pessoas_url
    assert_selector "h1", text: "Pessoas"
  end

  test "creating a Pessoa" do
    visit pessoas_url
    click_on "New Pessoa"

    fill_in "Cor", with: @pessoa.cor
    fill_in "Data Nasc", with: @pessoa.data_nasc
    fill_in "Email", with: @pessoa.email
    fill_in "Grau Escolaridade", with: @pessoa.grau_escolaridade
    fill_in "Nome", with: @pessoa.nome
    fill_in "Nome Mae", with: @pessoa.nome_mae
    fill_in "Nome Pai", with: @pessoa.nome_pai
    fill_in "Sexo", with: @pessoa.sexo
    fill_in "Telefone", with: @pessoa.telefone
    click_on "Create Pessoa"

    assert_text "Pessoa was successfully created"
    click_on "Back"
  end

  test "updating a Pessoa" do
    visit pessoas_url
    click_on "Edit", match: :first

    fill_in "Cor", with: @pessoa.cor
    fill_in "Data Nasc", with: @pessoa.data_nasc
    fill_in "Email", with: @pessoa.email
    fill_in "Grau Escolaridade", with: @pessoa.grau_escolaridade
    fill_in "Nome", with: @pessoa.nome
    fill_in "Nome Mae", with: @pessoa.nome_mae
    fill_in "Nome Pai", with: @pessoa.nome_pai
    fill_in "Sexo", with: @pessoa.sexo
    fill_in "Telefone", with: @pessoa.telefone
    click_on "Update Pessoa"

    assert_text "Pessoa was successfully updated"
    click_on "Back"
  end

  test "destroying a Pessoa" do
    visit pessoas_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Pessoa was successfully destroyed"
  end
end

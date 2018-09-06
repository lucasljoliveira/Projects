class CreatePessoas < ActiveRecord::Migration[5.2]
  def change
    create_table :pessoas do |t|
      t.string :nome
      t.string :email
      t.date :data_nasc
      t.string :sexo
      t.integer :telefone
      t.string :cor
      t.string :grau_escolaridade
      t.string :nome_pai
      t.string :nome_mae

      t.timestamps
    end
  end
end

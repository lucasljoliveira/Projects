class CreatePacientes < ActiveRecord::Migration[5.2]
  def change
    create_table :pacientes do |t|
      t.references :Pessoa, foreign_key: true
      t.string :medico_resp
      t.string :cuidador
      t.string :grau_esco_cuidador

      t.timestamps
    end
  end
end

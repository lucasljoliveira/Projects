class CreateEnderecos < ActiveRecord::Migration[5.2]
  def change
    create_table :enderecos do |t|
      t.references :Pessoa, foreign_key: true
      t.integer :cep
      t.string :pais
      t.string :uf
      t.string :cidade
      t.string :bairro
      t.string :rua
      t.integer :numero
      t.text :complemento
      t.string :tipo_moradia
      t.integer :num_comodos

      t.timestamps
    end
  end
end

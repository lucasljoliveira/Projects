class CreateTelefones < ActiveRecord::Migration[5.2]
  def change
    create_table :telefones do |t|
      t.references :Pessoa, foreign_key: true
      t.integer :num_tel

      t.timestamps
    end
  end
end

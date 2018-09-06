class CreateFuncionarios < ActiveRecord::Migration[5.2]
  def change
    create_table :funcionarios do |t|
      t.references :Pessoa, index: true, foreign_key: true
      t.integer :num_crefito

      t.timestamps
    end
  end
end

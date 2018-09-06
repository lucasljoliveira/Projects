json.extract! endereco, :id, :Pessoa_id, :cep, :pais, :uf, :cidade, :bairro, :rua, :numero, :complemento, :tipo_moradia, :num_comodos, :created_at, :updated_at
json.url endereco_url(endereco, format: :json)

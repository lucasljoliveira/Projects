json.extract! pessoa, :id, :nome, :email, :data_nasc, :sexo, :telefone, :cor, :grau_escolaridade, :nome_pai, :nome_mae, :created_at, :updated_at
json.url pessoa_url(pessoa, format: :json)

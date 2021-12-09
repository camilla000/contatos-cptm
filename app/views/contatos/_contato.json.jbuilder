json.extract! contato, :id, :nome, :telefone, :email, :departamento, :cargo, :locacao, :chefe, :secretaria, :created_at, :updated_at
json.url contato_url(contato, format: :json)

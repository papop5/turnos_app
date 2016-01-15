json.array!(@agencias) do |agencia|
  json.extract! agencia, :id, :nombre, :direccion
  json.url agencia_url(agencia, format: :json)
end

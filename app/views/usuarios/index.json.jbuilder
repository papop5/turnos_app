json.array!(@usuarios) do |usuario|
  json.extract! usuario, :id, :nombre, :apellido, :correo, :login, :estado, :password_digest, :agencia_id, :rol
  json.url usuario_url(usuario, format: :json)
end

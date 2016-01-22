json.array!(@turnos) do |turno|
  json.extract! turno, :id, :numero, :nombre, :asunto, :descripcion, :hora_ingreso, :hora_atencion, :hora_finalizacion, :usuario_id, :comentario, :estado, :agencia_id
  json.url turno_url(turno, format: :json)
end

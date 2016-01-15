json.array!(@evaluaciones) do |evaluacion|
  json.extract! evaluacion, :id, :turno_id, :pregunta1, :resultado1, :pregunta2, :resultado2, :pregunta3, :resultado3, :pregunta4, :resultado4, :resultado_total, :comentario
  json.url evaluacion_url(evaluacion, format: :json)
end

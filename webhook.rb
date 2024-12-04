require 'sinatra'
require 'json'

# Definir la ruta para recibir el webhook
post '/webhook' do
  begin
    # Leer y analizar el cuerpo de la solicitud
    request.body.rewind
    payload = JSON.parse(request.body.read)
    "Gaby se recibio la solicitud de  webhook with payload: #{payload}"
  rescue JSON::ParserError => e
    # En caso de error de análisis JSON
    "Error al analizar JSON: #{e.message}"
  end
end


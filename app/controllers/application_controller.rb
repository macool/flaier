class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  protected

  def create_grupo_resultado!(situacion)
    search_results = Resultado.tagged_with(situacion.tags)
    resultados = search_results.to_a.sample(4)
    GrupoResultado.create!(
      resultados_ids: resultados.map(&:id)
    )
  end
end

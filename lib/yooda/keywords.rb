module Yooda
  module Keywords

    # GET /insight/keywords/market/by/keywords/{kw_id}
    # Liste des expressions de recherche à partir d'un mot-clé
    def keywords_market_by_keyword(kw_id, options={})
      response = connection.get do |req|
        req.url "insight/keywords/market/by/keywords/#{kw_id}", options
      end
      return_error_or_body(response)
    end

    # GET /insight/keywords/{keyword}
    # Retourne les informations sur un mot-clé
    def keyword_informations(keyword, options={})
      response = connection.get do |req|
        req.url "insight/keywords/#{keyword}", options
      end
      return_error_or_body(response)
    end

    # GET /insight/keywords/{kw_id}/market/kpi
    # Récupérer les indicateurs clés de performance d'un mot-clé.
    def keyword_market_kpi(kw_id, options={})
      response = connection.get do |req|
        req.url "insight/keywords/#{kw_id}/market/kpi", options
      end
      return_error_or_body(response)
    end

  end
end

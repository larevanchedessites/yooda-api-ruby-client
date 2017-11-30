module Yooda
  module Domains

    # GET /insight/domains/{domain_id}/keywords
    # Liste des expressions de recherches positionnées d'un site
    def keywords_market_by_domain(domain_id, options={})
      response = connection.get do |req|
        req.url "insight/domains/#{domain_id}/keywords", options
      end
      return_error_or_body(response)
    end

    # GET /insight/domains/{domain_id}/kpi
    # Récupérer les indicateurs clés de performance d'un site pour un domain donnée.
    def domain_market_kpi(domain_id, options={})
      response = connection.get do |req|
        req.url "insight/domains/#{domain_id}/kpi", options
      end
      return_error_or_body(response)
    end

    # GET /insight/domains/{url}
    # Retourne les informations d'un domaine pour une url donnée
    def domain_informations(domain, options={})
      response = connection.get do |req|
        req.url "insight/domains/#{domain}", options
      end
      return_error_or_body(response)
    end

  end
end

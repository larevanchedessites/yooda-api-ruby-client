module Yooda

  class Client

    DEFAULT_CONNECTION_MIDDLEWARE = [
      Faraday::Request::Multipart,
      Faraday::Request::UrlEncoded,
      FaradayMiddleware::Mashify,
      FaradayMiddleware::ParseJson
    ]

    include Domains
    include Keywords
    include Subscriptions

    attr_reader :apikey

    def initialize(options={})
      @apikey = options[:apikey] || Yooda.apikey
      @connection_middleware = options[:connection_middleware] || Yooda.connection_middleware || []
      @connection_middleware += DEFAULT_CONNECTION_MIDDLEWARE
    end

    def connection
      params = {}
      params[:apikey] = @apikey if @apikey
      @connection ||= Faraday::Connection.new(:url => api_url, :params => params, :headers => default_headers) do |builder|
        @connection_middleware.each do |middleware|
          builder.use *middleware
        end
        builder.adapter Faraday.default_adapter
      end
    end

    def api_url
      "https://api.yooda.com"
    end

    def return_error_or_body(response, response_body)
      if response.status == 200
        response_body
      else
        raise Yooda::APIError.new(response.body['meta'], response.body['response'])
      end
    end

    private

    def default_headers
      headers = {
        :accept =>  'application/json',
        :user_agent => 'Yooda client API'
      }
    end

  end

end

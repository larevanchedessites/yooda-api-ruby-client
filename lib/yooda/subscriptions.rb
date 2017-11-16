module Yooda
  module Subscriptions

    def credits(options={})
      response = connection.get do |req|
        req.url "subscriptions/credits", options
      end
      return_error_or_body(response, response.body.content)
    end

    def histories(options={})
      response = connection.get do |req|
        req.url "subscriptions/histories", options
      end
      return_error_or_body(response, response.body.content)
    end

  end
end

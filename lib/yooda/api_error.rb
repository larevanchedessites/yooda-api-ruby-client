module Yooda
  class APIError < StandardError

    attr_reader :status
    attr_reader :reason
    attr_reader :response

    def initialize(status, reason, response)
      @status = status
      @reason = reason
      @response = response
    end

    def message
      "#{@reason}: #{@response} (#{@status})"
    end
    alias :to_s :message
  end
end

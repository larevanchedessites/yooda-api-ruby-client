require 'faraday'
require 'faraday_middleware'

require 'yooda/domains'
require 'yooda/keywords'
require 'yooda/subscriptions'

Dir[File.dirname(__FILE__) + '/yooda/*.rb'].each {|file| require file }

module Yooda

  class << self

    attr_accessor :apikey, :connection_middleware

    def configure
      yield self
      true
    end

  end

end

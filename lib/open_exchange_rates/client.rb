# frozen_string_literal: true

require 'http'

require 'open_exchange_rates/api_methods'

module OpenExchangeRates
  class Client
    attr_reader :app_id, :base

    include ApiMethods

    def initialize(options = {})
      @app_id = options.fetch(:app_id)
      @base = options.fetch(:base)
    end

    def get(path, params = {})
      response = connection.get(url(path), params)

      raise response.to_s unless response.status.ok?

      JSON.parse(response.to_s)
    end

    private

    def connection
      @connection = HTTP.auth("Token #{app_id}")
    end

    def url(path)
      "https://openexchangerates.org/api/#{path}"
    end
  end
end

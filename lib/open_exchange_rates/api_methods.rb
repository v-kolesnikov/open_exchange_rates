# frozen_string_literal: true

module OpenExchangeRates
  module ApiMethods
    def latest(params = {})
      get 'latest.json', params
    end

    # @param date [Date]
    def historical(date, params = {})
      get "/historical/#{date.iso8601}.json", params
    end

    def currencies(params = {})
      get 'currencies.json', params
    end

    def time_series(params = {})
      get 'time-series.json', params
    end

    def convert(value:, from:, to:)
      get "convert/#{value}/#{from}/#{to}"
    end

    def ohlc(params)
      raise ArgumentError unless %i[start_time period].all? { |param| params.key?(param) }
      get 'ohlc.json', params
    end

    def usage
      get 'usage.json'
    end
  end
end

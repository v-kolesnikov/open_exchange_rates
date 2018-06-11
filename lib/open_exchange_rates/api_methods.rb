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

    def currencies
    end

    def time_series
    end

    def convert
    end

    def ohlc
    end

    def usage
    end
  end
end

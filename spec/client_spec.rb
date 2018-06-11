# frozen_string_literal: true

require 'spec_helper'
require 'open_exchange_rates/client'

RSpec.describe OpenExchangeRates::Client do
  subject(:client) do
    described_class.new(app_id: '', base: '')
  end

  describe '.new' do
    it { is_expected.to be_instance_of(described_class) }
  end

  describe '#get' do
    before do
      stub_request(:get, 'https://openexchangerates.org/api/usage.json')
        .with(headers: { 'Authorization' => 'Token ' })
        .to_return(status: 200, body: '', headers: {})
    end

    before do
      client.get('usage.json')
    end

    it 'makes request', :aggregate_failures do
      expect(WebMock)
        .to have_requested(:get, 'https://openexchangerates.org/api/usage.json')
        .with(headers: { 'Authorization' => 'Token ' })
    end
  end

  # context if key is not presence
end

require 'faraday'
require 'json'

module Dependenci
  class Client
    API_BASE = 'http://dependenci.com'

    def rubygems(opts={})
      send_request('/api/rubygems', opts)
    end

    def npm(opts={})
      send_request('/api/npm', opts)
    end

    private

    def send_request(path, params={})
      url  = "#{API_BASE}#{path}"
      resp = Faraday.post(url, params)

      JSON.parse(resp.body)
    end
  end
end
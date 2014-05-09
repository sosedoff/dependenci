require "faraday"
require "json"

module Dependenci
  class Client
    API_BASE = "http://dependenci.com"

    def rubygems(opts = {})
      send_request("/api/rubygems", opts)
    end

    def npm(opts = {})
      send_request("/api/npm", opts)
    end

    private

    def send_request(path, params = {})
      resp = Faraday.post("#{API_BASE}#{path}", params)
      JSON.parse(resp.body)
    end
  end
end
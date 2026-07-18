require "base64"

module GettiveMailer
  class DeliveryMethod
    def initialize(_options = {})
    end

    def deliver!(mail)
      uri = URI("#{GettiveMailer.config.endpoint}")

      response = Net::HTTP.start(
        uri.endpoint,
        uri.port,
        use_ssl: uri.scheme == "https"
      ) do |http|
        request = Net::HTTP::Post.new(uri)

        request["Authorization"] =
          "Bearer #{GettiveMailer.config.api_key}"

        request["Content-Type"] = "application/json"

        request.body = {
          raw_email: Base64.strict_encode64(mail.to_s)
        }.to_json

        http.request(request)
      end

      return if response.code.to_i.between?(200, 299)

      raise StandardError,
            "GettiveMailer delivery failed: #{response.code} #{response.body}"
    end
  end
end
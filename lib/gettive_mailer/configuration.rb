module GettiveMailer
    class Configuration
        attr_accessor :api_key, :endpoint

        def initialize
            @endpoint = ENV.fetch("GETTIVE_MAILER_ENDPOINT", "https://tuqfgkz924.execute-api.us-east-1.amazonaws.com")
        end
    end
end
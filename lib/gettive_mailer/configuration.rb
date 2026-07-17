module GettiveMailer
    class Configuration
        attr_accessor :api_key, :host

        def initialize
            @host = ENV.fetch("GETTIVE_MAILER_HOST", "https://tuqfgkz924.execute-api.us-east-1.amazonaws.com")
        end
    end
end
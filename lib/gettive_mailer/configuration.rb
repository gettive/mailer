module GettiveMailer
    class Configuration
        attr_accessor :api_key, :endpoint

        def initialize
            @endpoint = ENV.fetch("GETTIVE_MAILER_ENDPOINT", "https://api.mailer.gettive.com")
        end
    end
end
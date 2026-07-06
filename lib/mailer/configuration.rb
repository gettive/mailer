module GettiveMailer
    class Configuration
        attr_accessor :api_key, :endpoint

        def initialize
            @endpoint = "https://api.mailer.gettive.com"
        end
    end
end
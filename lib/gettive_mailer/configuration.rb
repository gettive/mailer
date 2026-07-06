module GettiveMailer
    class Configuration
        attr_accessor :api_key, :endpoint

        def initialize
            # @endpoint = "http://127.0.0.1:3000"
            @endpoint = "https://webhook.site/5b1798e7-3d89-496b-97d8-2a81c60a1296"
        end
    end
end
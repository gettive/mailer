require "net/http"
require "json"

require_relative "gettive_mailer/version"
require_relative "gettive_mailer/configuration"
require_relative "gettive_mailer/delivery_method"

module GettiveMailer
  class << self
    attr_accessor :configuration

    def configure
      self.configuration ||= Configuration.new
      yield(configuration)
    end

    def config
      self.configuration ||= Configuration.new
    end
  end
end

require_relative "gettive_mailer/railtie" if defined?(Rails)
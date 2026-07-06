# gettive_mailer.gemspec

require_relative "lib/gettive_mailer/version"

Gem::Specification.new do |spec|
  spec.name          = "gettive_mailer"
  spec.version       = GettiveMailer::VERSION
  spec.authors       = "Vincent Makokha"
  spec.email         = "makokhavomondi@gmail.com"

  spec.summary       = "Action Mailer delivery adapter for GettiveMailer"
  spec.description   = "Send Rails emails through the GettiveMailer API, powered by AWS SES."
  spec.homepage      = "https://github.com/gettive/mailer"
  spec.license       = "MIT"

  spec.required_ruby_version = ">= 3.0"
  
  spec.files = Dir[
    "lib/**/*",
    "README.md"
  ]

  spec.require_paths = ["lib"]

  spec.add_dependency "rails", ">= 6.1"
end
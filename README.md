# About
Use this in your Rails app if you have a custom email delivery service, possibly powered by AWS SES, and need an adapter that forwards email requests to it.

This allows your application to use your own email infrastructure through Rails' standard mailer interface, without requiring direct SMTP access or provider-specific integration in every application.

# Set up

## Compiling

Run the following commands
```
gem signin
```

Follow all the steps for signin in. Once completed, run the following
```
gem build gettive_mailer.gemspec
```

This will create a file with its name in the following form *gettive_mailer-*<VERSION>*.gem*. Push that file to ruygems repository using the command shown below;
```
gem push gettive_mailer<VERSION>.gem
```

## Setting up this Gem in your project

Add the following to your GemFile
```
gem "gettive_mailer"
```

Afterward, run `bundle install` to have it installed

Add the following variables to your environment variables
```
GETTIVE_MAILER_API_KEY=<Your API Key>
GETTIVE_MAILER_ENDPOINT=<Your Mailer Server Endpoint>
```

Create *gettive_mailer.rb* inside the initializers directory, and add this; it will be loaded when the server is started

```
GettiveMailer.configure do |config|
    config.api_key = ENV["GETTIVE_MAILER_API_KEY"]
    config.host = ENV["GETTIVE_MAILER_ENDPOINT"]
end
``` 

In your prereferred environment (Available in *config/environments/<env name>*), set *gettive_mailer*, as your chosen adaptor for sending emails

```
  config.action_mailer.delivery_method = :gettive_mailer
```

You should now be good to go

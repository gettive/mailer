# About
If you have a custom mailer powered by a service such as AWS SES and want to use it across your projects in the same way you would use providers like Resend, Postmark, or Mailgun, you can configure it as an adapter that forwards email requests to your mail server.

This means you don't have to worry about whether the server hosting your application allows outbound connections on SMTP ports.

You can also use this adapter if you choose Gettive Mailer for your email infrastructure. We provide a simple, developer-friendly email API at a lower cost than most alternatives on the market.

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

Create *gettive_mailer.rb* inside the initializers directory, and add this; it will be loaded when the server is started
```
GettiveMailer.configure do |config|
    config.api_key = <Your API Key>
end
``` 

In your prereferred environment (Available in *config/environments/<env name>*), set *gettive_mailer*, as your chosen adaptor for sending emails

```
  config.action_mailer.delivery_method = :gettive_mailer
```

You should now be good to go

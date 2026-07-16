# Set up
Add the following to your GemFile to have it installed from GitHub; `gem "gettive_mailer", git: "https://github.com/gettive/mailer.git"`, then `bundle install`

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

# Set up
Run `bundle add gettive_mailer`, or in case you have this project somewhere in your local system, add `gem "gettive_mailer", path: "<path to this project>"` to _Gemfile_, and then run `bundle install`

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
# About
Use this in your Rails app if you have a custom email delivery service, possibly powered by AWS SES, and need an adapter that forwards email requests to it.

This allows your application to use your own email infrastructure through Rails' standard mailer interface, without requiring direct SMTP access or provider-specific integration in every application.

# Configuration

To have this gem in your project, add the following to your GemFile
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

# What to Expect

Email requests will be forwarded to your configured mail server endpoint using the following setup.

## Endpoint

`POST <GETTIVE_MAILER_ENDPOINT>`

## Request Headers

| Header          | Value              |
| --------------- | ------------------ |
| `Authorization` | `Bearer <API_KEY>` |
| `Content-Type`  | `application/json` |

## Request Body

The request body contains the raw email encoded as Base64:

```json
{
  "raw_email": "<BASE64_ENCODED_RAW_EMAIL>"
}
```

Your mail server is responsible for decoding and processing the raw email, then forwarding it to the appropriate email delivery service.


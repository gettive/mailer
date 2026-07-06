module GettiveMailer
  class Railtie < Rails::Railtie
    initializer "gettive_mailer.action_mailer" do
      ActionMailer::Base.add_delivery_method(
        :gettive_mailer,
        GettiveMailer::DeliveryMethod
      )
    end
  end
end
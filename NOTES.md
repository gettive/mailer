# Building and Publishing this Gem

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
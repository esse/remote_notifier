# RemoteNotifier

Installation:

* add 'remote_notifier' to gemfile

* bundle

* add to production.rb this code:

```ruby
config.middleware.use RemoteNotifier::Base, :remote => 'url to your instance', :token => 'token', :secret => 'secret'
```


now you're good to go!
module RemoteNotifier
  require 'action_dispatch'
  class Base
  
    attr_accessor :remote, :token, :secret

    def initialize(app, options = {})
      @app = app
      @remote = options[:remote]
      @token = options[:token]
      @secret = options[:secret]
      raise "Please provide :remote, :token and :secret when defining middleware" unless @remote && @token && @secret
      @remote += "/api/v1/"
    end

    def call(env)
      begin
        @app.call(env)
      rescue Exception => exception
        RemoteNotifier::Notification.create(:backtrace => exception.backtrace.join("\n"), :msg_class => exception.class.to_s, :message => exception.message, :object => self)
        raise exception
      end
    end

  end
end
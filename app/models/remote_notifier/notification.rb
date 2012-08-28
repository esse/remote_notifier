module RemoteNotifier
  class Notification < ActiveResource::Base
  
    def self.create(args = {})
      obj = args.delete :object
      self.site = obj.remote
      self.user = obj.token
      self.password = obj.secret
      super(args)
    end
    
  end
end
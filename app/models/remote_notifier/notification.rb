module RemoteNotifier
  class Notification < ActiveResource::Base
  
    def self.create(args = {})
      obj = args.delete :object
      self.site = obj.remote
      super(args)
    end
    
  end
end
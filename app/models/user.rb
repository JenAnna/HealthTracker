class User < ActiveRecord::Base
  before_create :set_security_key

  private def set_security_key
    self.security_key = SecureRandom.hex
  end

end

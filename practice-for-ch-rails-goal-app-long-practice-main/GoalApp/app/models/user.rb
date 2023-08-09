class User < ApplicationRecord

    validates_presence_of :username, :password_digest
    validates :password, length: {minimum: 6}
    
    before_validation :ensure_session_token
    attr_reader :password

    def self.find_by_credentials(username, password)

    end
    def password=(password)
         self.password_digest = BCrypt::Password.create(password)
         @password = password
    end
    
    def is_password?(password)
        password_object = BCrypt::Password.new(self.password_digest)
        password_object.is_password?(password)
    end

    def ensure_session_token
        
    end

    def reset_session_token!

    end
end

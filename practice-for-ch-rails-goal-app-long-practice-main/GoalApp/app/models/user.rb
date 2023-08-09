class User < ApplicationRecord

    validates_presence_of :username, :password_digest
    validates :password, length: {minimum: 6}

    attr_reader :password
    def password=(password)
         self.password_digest = BCrypt::Password.create(password)
         @password = password
    end
end

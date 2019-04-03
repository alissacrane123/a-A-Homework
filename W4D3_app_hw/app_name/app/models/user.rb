class User < ApplicationRecord
    def password=(password)
        self.password_digest = BCrypt::Password.create(password)
    end

    def is_password?(password)
        BCrypt::Password.new(self.password_digest).is_password?(password)
    end

    validates :session_token, presence: true
    after_initialize :ensure_session_token

    def self.generate_session_token
        SecureRandom::urlsafe_base64(16)
    end
end

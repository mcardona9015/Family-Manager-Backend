class User < ApplicationRecord
    has_many :photo_albums
    has_many :photos, through: :photo_albums

    validates :username, uniqueness: {case_sensitive: false}, presence: true
    # validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }
    has_secure_password
end

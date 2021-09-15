class User < ApplicationRecord
    has_secure_password
    validates :name, presence: true, length: { minimum: 2}
    validates :email, uniqueness: true
end

class User < ApplicationRecord
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i.freeze

  validates :name, presence: true,
    length: {maximum: Settings.validations.length.digist_225, minimum: Settings.validations.length.digist_6}
  validates :email, uniqueness: true,
    length: {maximum: Settings.validations.length.digist_150},
    format: {with: VALID_EMAIL_REGEX}
  validates :password, presence: true,
    length: {minimum: Settings.validations.length.digist_6},
  has_secure_password
end

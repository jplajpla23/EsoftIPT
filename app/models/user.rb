class User < ApplicationRecord
    has_many :sensors
    has_many :groups
    validates :role, presence: true
    validates :email, presence: true, uniqueness: { case_sensitive: false }
    validates :name, presence: true, length: {maximum: 50}, format: { with: /\A[a-zA-Z]+\z/ }
    validates :password, presence: true
end

class User < ApplicationRecord
	include BCrypt
	has_secure_password   
	has_many :sensors
	has_many :groups
	validates :role, presence: true
	validates :email, presence: true, uniqueness: { case_sensitive: false }
	validates :name, presence: true, length: {maximum: 50}, format: { with: /\A[a-zA-Z]+\z/ }
	validates :password_digest, presence: true
	
	def password
		@password ||= Password.new(password_digest)
	end

	def password=(new_password)
		@password = Password.create(new_password)
		self.password_digest = @password
	end
end

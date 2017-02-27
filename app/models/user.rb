class User < ApplicationRecord
	
	devise :database_authenticatable, :registerable,
		:recoverable, :rememberable, :trackable, :validatable

	acts_as_messageable

	after_create :send_admin_mail

	def mailboxer_name
		self.name
	end

	def mailboxer_email(object)
		self.email
	end

	def full_name
		self[:first_name]+" "+self[:last_name]
	end
	
	def send_admin_mail
	  UserMailer.send_welcome_email(self).deliver_later
	end



	# require 'csv'

	# def self.import(file)

	# 	CSV.foreach(file.path, {col_sep: ',', headers: true}) do |row|
			
	# 		User.create! row.to_hash

	# 	end
	# end


	
end
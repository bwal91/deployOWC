class User < ApplicationRecord
	
	devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :authentication_keys => {email: true, login: false}

	acts_as_messageable

	after_create :send_admin_mail

	attr_accessor :login

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
	  UserMailer.send_welcome_email(self).deliver_now
	end

	def self.find_for_database_authentication(warden_conditions)
      conditions = warden_conditions.dup
      if login = conditions.delete(:login)
        where(conditions.to_h).where(["lower(email) = :value", { :value => login.downcase }]).first
      elsif conditions.has_key?(:email)
        where(conditions.to_h).first
      end
		conditions[:email].downcase! if conditions[:email]
		where(conditions.to_h).first
    end


	# require 'csv'

	# def self.import(file)

	# 	CSV.foreach(file.path, {col_sep: ',', headers: true}) do |row|
			
	# 		User.create! row.to_hash

	# 	end
	# end


	
end
class Student < ApplicationRecord
	validates :name , presence: true , length: { minumum: 4 , maximum: 20 }

	before_save { self.email = email.downcase }
	VALID_EMIAL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
	validates :email, presence: true , uniqueness: { case_sensitive: false } ,length: { minimum: 3 , maximum: 105 } ,
	 format: { with: VALID_EMIAL_REGEX }

end	
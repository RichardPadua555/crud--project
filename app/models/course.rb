class Course <  ApplicationRecord

    validates :short_name , presence: true , length: { minumum: 3 , maximum: 10 }
	validates :name , presence: true , length: { minumum: 5 , maximum: 50 }
	validates :description , presence: true , length: { minumum: 10 , maximum: 300 }


end	
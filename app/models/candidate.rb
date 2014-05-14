class Candidate < ActiveRecord::Base
	has_many :nominations

	validates_format_of :name, with: /\A[a-zA-Z. ]*\z/, message: "only allows letters dot and space", allow_blank: true

	validates :age, numericality: { greater_than_or_equal_to: 18, less_than_or_equal_to: 100, only_integer: true}, allow_blank: true

	validates :mobile, numericality: {only_integer: true}, length: {is: 10},  allow_blank: true

	validates :email, email_format: {message: 'is not a valid email'}, allow_blank: true

	validates_format_of :pan, with: /[a-z]{3}[cphfatblj][a-z]\d{4}[a-z]/i, message: 'is not in a format of AAAAA9999A', allow_blank: true

	validates_format_of :spouse_name, :education, :occupation, with: /\A[a-zA-Z. ]*\z/, message: "only allows letters dot and space", allow_blank: true

	#validates :income_for_2012_2013, numericality: {greater_than_or_equal_to: 1}, allow_blank: true

	validates_numericality_of :income_for_2012_2013, only_integer: true, greater_than_or_equal_to: 1, message: "can only be whole number above or equal to 1.", allow_blank: true

end

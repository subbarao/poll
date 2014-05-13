class Candidate < ActiveRecord::Base
	has_many :nominations

	#validates :name, :sex, :age, :address, :mobile, :email, :pan, :married, :spouse_name, :education, :occupation, :income_for_2012_2013, presence: false

	validates :name, format: {with: /\A[a-zA-Z]+\z/,
	                                 message: "only allows letters"}, :allow_blank => true

	validates :age, numericality: {
		greater_than_or_equal_to: 18, less_than_or_equal_to: 100
	}, :allow_blank => true

	validates :mobile, length: {minimum: 10, maximum: 10}, :allow_blank => true

	validates :email, :email_format => {:message => 'is not a valid email'}, :allow_blank => true

	validates_format_of :pan, :with => /[a-z]{3}[cphfatblj][a-z]\d{4}[a-z]/i, :message => 'is not in a format of AAAAA9999A', :allow_blank => true

	validates :spouse_name, :education, :occupation, format: {with: /\A[a-zA-Z]+\z/,
	                          message: "only allows letters"}, :allow_blank => true

	validates :income_for_2012_2013, numericality: true, :allow_blank => true
end

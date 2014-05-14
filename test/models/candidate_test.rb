require 'test_helper'

class CandidateTest < ActiveSupport::TestCase
  def test_validate_name
	  a = Candidate.create(name: "b@attula")
		assert_equal false, a.persisted?

	  a = Candidate.create(name: "9battula")
	  assert_equal false, a.persisted?

		a = Candidate.create(name: "{battula")
		assert_equal false, a.persisted?

		a = Candidate.create(name: "bat^tula")
		assert_equal false, a.persisted?

		a = Candidate.create(name: "battula(inc)")
		assert_equal false, a.persisted?

		a = Candidate.create(name: "battula")
		assert_equal true, a.persisted?

	  a = Candidate.create(name: "b att ula")
	  assert_equal true, a.persisted?

	  a = Candidate.create(name: "b.a.t.t.ula.")
	  assert_equal true, a.persisted?

		a = Candidate.create(name: "b.attula")
		assert_equal true, a.persisted?

		a = Candidate.create(name: "Battula")
		assert_equal true, a.persisted?

		a = Candidate.create(name: ".battula")
		assert_equal true, a.persisted?

		a = Candidate.create(name: "battula.")
		assert_equal true, a.persisted?

	  a = Candidate.create(name: ".battula")
	  assert_equal true, a.persisted?

	  a = Candidate.create(name: " battula.")
	  assert_equal true, a.persisted?			
  end

  def test_validate_spouse_name
	  a = Candidate.create(spouse_name: "b@attula")
	  assert_equal false, a.persisted?

	  a = Candidate.create(spouse_name: "9battula")
	  assert_equal false, a.persisted?

	  a = Candidate.create(spouse_name: "{battula")
	  assert_equal false, a.persisted?

	  a = Candidate.create(spouse_name: "bat^tula")
	  assert_equal false, a.persisted?

	  a = Candidate.create(spouse_name: "battula(inc)")
	  assert_equal false, a.persisted?

	  a = Candidate.create(spouse_name: "battula")
	  assert_equal true, a.persisted?

	  a = Candidate.create(spouse_name: "b att ula")
	  assert_equal true, a.persisted?

	  a = Candidate.create(spouse_name: "b.a.t.t.ula.")
	  assert_equal true, a.persisted?

	  a = Candidate.create(spouse_name: "b.attula")
	  assert_equal true, a.persisted?

	  a = Candidate.create(spouse_name: "Battula")
	  assert_equal true, a.persisted?

	  a = Candidate.create(spouse_name: ".battula")
	  assert_equal true, a.persisted?

	  a = Candidate.create(spouse_name: "battula.")
	  assert_equal true, a.persisted?

	  a = Candidate.create(spouse_name: ".battula")
	  assert_equal true, a.persisted?

	  a = Candidate.create(spouse_name: " battula.")
	  assert_equal true, a.persisted?
  end

  def test_validate_age
		a = Candidate.create(age: 1)
		assert_equal false, a.persisted?

		a = Candidate.create(age: 101)
		assert_equal false, a.persisted?

		a = Candidate.create(age: 1.5)
		assert_equal false, a.persisted?

		a = Candidate.create(age: 18.5)
		assert_equal false, a.persisted?

		a = Candidate.create(age: 100)
		assert_equal true, a.persisted?

		a = Candidate.create(age: 18)
		assert_equal true, a.persisted?
  end

	def test_validate_mobile
		a = Candidate.create(mobile: "a")
		assert_equal false, a.persisted?

		a = Candidate.create(mobile: "aaaaaaaaaa")
		assert_equal false, a.persisted?

		a = Candidate.create(mobile: 1234567890)
		assert_equal true, a.persisted?

		a = Candidate.create(mobile: 123457890)
		assert_equal false, a.persisted?

		a = Candidate.create(mobile: 12345%7890)
		assert_equal false, a.persisted?

		a = Candidate.create(mobile: 2_34567890)
		assert_equal false, a.persisted?
	end

	def test_validate_email
		a = Candidate.create(email: "email")
		assert_equal false, a.persisted?

		a = Candidate.create(email: "email.")
		assert_equal false, a.persisted?

		a = Candidate.create(email: "email@email.com")
		assert_equal true, a.persisted?

		a = Candidate.create(email: "email@email.net")
		assert_equal true, a.persisted?

		a = Candidate.create(email: "email@gmail.biz")
		assert_equal true, a.persisted?

		a = Candidate.create(email: "email@email.cm")
		assert_equal true, a.persisted?

		a = Candidate.create(email: "1")
		assert_equal false, a.persisted?

		a = Candidate.create(email: "email@email.heroku.com")
		assert_equal true, a.persisted?

		a = Candidate.create(email: "email.email@email.com")
		assert_equal true, a.persisted?
	end

	def test_validate_pan
		a = Candidate.create(pan: "AGOPB2579F")
		assert_equal true, a.persisted?

		a = Candidate.create(pan: "AGOPB25792")
		assert_equal false, a.persisted?

		a = Candidate.create(pan: "AGOPB257aF")
		assert_equal false, a.persisted?

		a = Candidate.create(pan: "1GOPB2579F")
		assert_equal false, a.persisted?

		a = Candidate.create(pan: "AGOzB2579F")
		assert_equal false, a.persisted?
	end

	def test_validate_income
		a = Candidate.create(income_for_2012_2013: 1)
		assert_equal true, a.persisted?

		a = Candidate.create(income_for_2012_2013: 1.5)
		assert_equal false, a.persisted?

		a = Candidate.create(income_for_2012_2013: "a")
		assert_equal false, a.persisted?

		a = Candidate.create(income_for_2012_2013: -1)
		assert_equal false, a.persisted?

		a = Candidate.create(income_for_2012_2013: +1)
		assert_equal true, a.persisted?
	end
end
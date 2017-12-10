require_relative '../models/number_converter'
RSpec.describe NumberConverter do

	def new_test_factory lparam, lstring

		converter = NumberConverter.new
		lnumber = converter.converter(lparam)
		expect(lnumber).to(eq(lstring))
	end

	it "Should return 'one' for 1" do
		new_test_factory(1, 'one')
	end

	it "Should return 'two' for 2" do
		new_test_factory(2, 'two')
	end

	it "Should return 'fifteen' for 15" do
		new_test_factory(15, 'fifteen')
	end

	it "Should return 'twenty one' for 21" do
		new_test_factory(21, 'twenty one')
	end

	it "Should return 'one hundred and forty' for 140" do
		new_test_factory(140, 'one hundred and forty')
	end
end
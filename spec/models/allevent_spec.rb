require 'rails_helper'

RSpec.describe Allevent, type: :model do
	before :each do
		@item = Allevent.new
	end

	it "is valid with valid attributes" do
		@item.workshop = "anything"
		@item.others = "anything"
		expect(@item).to be_valid
		
	end

	it "is ivalid without a workshop" do
		@item.workshop = nil
		expect(@item).to_not be_valid
	end
	it "is ivalid without a others" do
		@item.others = nil
		expect(@item).to_not be_valid
	end
end

require "spec_helper"
require "email"

describe Email do	
	it "has an email called arthurnfarias" do
		email = Email.new
		email.email.should == "arthurnfarias"
	end
end	
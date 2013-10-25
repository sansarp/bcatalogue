require_relative '../spec_helper'

describe Contactu do
	it "should send message" do
		cont = Contactu.new(:name => 'subash', :email => 'connect.subash@gmail.com',
		:message => "Test message")
		expect(cont.valid?).to be(true)
	end
end
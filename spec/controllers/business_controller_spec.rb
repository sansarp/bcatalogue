require_relative '../spec_helper'

describe BusinessesController do
	before(:each) do 
		@user = User.create!(
			email: 'connect.subash@gmail.com',
			password: 'password'
			)

		@newuser = User.create!(
				email: 'subash@gmail.com',
				password: 'wrongkkk'
			)
	end
it "should  allow business add for authenticated user" do
	login_as @user  
	@business = Business.new
	visit new_business_path 
end

it "should not allow business add for unauthenticated user" do
	login_as @newuser
	@business = Business.new
	visit new_business_path 
end
end

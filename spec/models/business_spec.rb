require_relative '../spec_helper'

describe Business do
	it { should validate_presence_of(:name)}
	it { should validate_presence_of(:description)}
	xit { should validate_presence_of(:category)}
	
	it "creation increases the number of business created" do
		business = Business.new(name: 'Wood carved', description: 'with artistic design', category: 'wood')
		expect {business.save}. to change {Business.count}. by (1)
	end

	it "raises an exception if saved without business category" do
		business = Business.new
		expect {business.save!}.to raise_error {
			ActiveRecord::RecordInvalid
		}             
	end	

	it "should have unique name" do
		business1 = Business.new(name: 'Golcha', description: 'Electronics',category: 'Industry')

		business2 = Business.new(name: 'CG group', description: 'Electronics and Food',category: 'Industry')
		
		expect {business2.save}.to change {Business.count}. by (1)
	end
end
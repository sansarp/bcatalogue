class Business < ActiveRecord::Base
	validates :name, presence: :true, uniqueness: true
	validates :description, presence: :true
	validates :category, presence: :true
	belongs_to :user
end

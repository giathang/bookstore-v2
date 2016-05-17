class Category < ActiveRecord::Base
	has_many :books, dependent: :destroy

	validates :category_name, presence: true, uniqueness: true
end

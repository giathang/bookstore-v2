class Author < ActiveRecord::Base
	has_many :assignments
	has_many :books, through: :assignments

	validates :name, presence: true
end

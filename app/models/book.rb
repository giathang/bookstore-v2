class Book < ActiveRecord::Base
	has_many :comments, dependent: :destroy
	has_many :assignments
	has_many :authors, through: :assignments
	belongs_to :category

  validates_presence_of :title, :isbn, :des, :category_id
  validates :isbn, length: {maximum: 5}
end

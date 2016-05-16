class Book < ActiveRecord::Base
	belongs_to :category

  validates_presence_of :title, :isbn, :des, :category_id
  validates :isbn, length: {maximum: 5}

end

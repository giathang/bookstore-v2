class Book < ActiveRecord::Base
	belongs_to :category

  validates_presence_of :title, :isbn, :des
  validates :isbn, length: {maximum: 5}
  def self.search(search)
    if search
      self.where("title LIKE ?", "%#{search}%")
    else
      self.all
    end
  end
end

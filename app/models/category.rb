class Category < ActiveRecord::Base
	has_many :books
	before_destroy :no_reference_books
	validates :category_name, presence: true, uniqueness: true

	private

  def no_reference_books
    unless books.nil?
      books.map do |book|
        book.category_id = nil
        book.save
      end
    end
  end
end

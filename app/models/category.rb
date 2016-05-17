class Category < ActiveRecord::Base
	has_many :books
	before_destroy :no_reference_books
	validates :category_name, presence: true, uniqueness: true

	private

  def no_reference_books
    unless books.nil?
      books.update_all(category_id: nil)
    end
  end
end

class Category < ActiveRecord::Base
<<<<<<< HEAD
	has_many :books
	before_destroy :no_reference_books
=======
	has_many :books, dependent: :destroy

>>>>>>> a91eb48a356cfda58780303dbe70477b57e02bd2
	validates :category_name, presence: true, uniqueness: true

	private

  def no_reference_books
    unless books.nil?
      books.update_all(category_id: nil)
    end
  end
end

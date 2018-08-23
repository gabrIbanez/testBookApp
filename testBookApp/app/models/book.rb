class Book < ApplicationRecord
	after_create :author_books_implementation

	belongs_to :author 

	def author_books_implementation
		self.author.update(nb_of_book_published: self.author.books.count)
	end

end

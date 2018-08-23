class Book < ApplicationRecord
	include PgSearch
  pg_search_scope :search_by_name, 
  	against: :name,
  	associated_against: {
  		author: [:first_name, :last_name]
  	}
  		
	
	after_create :author_books_implementation
	
	belongs_to :author 

	def author_books_implementation
		self.author.update(nb_of_book_published: self.author.books.count)
	end

end

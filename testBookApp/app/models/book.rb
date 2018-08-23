class Book < ApplicationRecord
	after_create :author_books_implementation

	belongs_to :author 
	include PgSearch
  pg_search_scope :search_by_title_and_syllabus,
    against: [ :name, :author_name, :author ],
    using: {
      tsearch: { prefix: true } # <-- now `superman batm` will return something!
    }

	def author_books_implementation
		self.author.update(nb_of_book_published: self.author.books.count)
	end

end

class AllBooksController < ApplicationController
	def index
		@books = Book.all
	end
end

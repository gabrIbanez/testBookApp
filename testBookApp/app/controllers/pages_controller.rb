class PagesController < ApplicationController
	def home
    if params[:query].present?
      sql_query = " \
        books.name @@ :query \
        OR books.description @@ :query \
        OR authors.first_name @@ :query \
        OR authors.last_name @@ :query \
      "
      @books = Book.joins(:author).where(sql_query, query: "%#{params[:query]}%")
    else
      @books = Book.all
    end
  end
end

class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    if user_signed_in?
      @user = current_user 
      @borrower = @user.borrower if @user.borrower
    end
    if params[:query].present?
      sql_query = " \
        books.name LIKE :query \
        OR books.description LIKE :query \
        OR authors.first_name LIKE :query \
        OR authors.last_name LIKE :query \
      "
      @books = Book.joins(:author).where(sql_query, query: "%#{params[:query]}%")
    else
      @books = Book.all
    end
  end
end

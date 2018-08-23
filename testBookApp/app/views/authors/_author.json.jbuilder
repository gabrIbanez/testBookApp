json.extract! author, :id, :first_name, :last_name, :birth_date, :city, :nb_of_book_published, :created_at, :updated_at
json.url author_url(author, format: :json)

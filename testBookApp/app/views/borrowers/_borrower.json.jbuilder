json.extract! borrower, :id, :first_name, :last_name, :birth_date, :city, :able_to_borrow, :user_id, :created_at, :updated_at
json.url borrower_url(borrower, format: :json)

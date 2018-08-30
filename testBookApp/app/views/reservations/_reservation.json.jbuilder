json.extract! reservation, :id, :borrower_id, :book_id, :start_time, :end_time, :returned, :created_at, :updated_at
json.url reservation_url(reservation, format: :json)

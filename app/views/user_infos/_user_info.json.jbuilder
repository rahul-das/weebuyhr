json.extract! user_info, :id, :birth_date, :gender, :marital_status, :address1, :address2, :city, :state, :country, :zipcode, :contact1, :contact2, :linkedin_link, :twitter_link, :facebook_link, :created_at, :updated_at
json.url user_info_url(user_info, format: :json)

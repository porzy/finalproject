json.extract! customer, :id, :email, :name, :address, :postalcode, :province_id, :admin, :created_at, :updated_at
json.url customer_url(customer, format: :json)

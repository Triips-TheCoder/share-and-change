json.extract! charity, :id, :logo, :description, :phone, :email, :website, :adress, :zipcode, :city, :country, :name, :created_at, :updated_at
json.url charity_url(charity, format: :json)

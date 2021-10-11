json.extract! company, :id, :name, :adress, :category_id, :payment_method_id, :phone, :schedule, :email, :status, :created_at, :updated_at
json.url company_url(company, format: :json)

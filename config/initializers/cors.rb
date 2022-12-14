Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    origins Rails.application.credentials[Rails.env.to_sym][:allowed_origins]
    resource '*', headers: :any, methods: [:get, :post]
  end
end

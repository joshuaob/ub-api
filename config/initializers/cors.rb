Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    origins 'http://localhost:4201' if Rails.env.development?
    origins 'https://app-staging.utterbounty.io' if Rails.env.production?
    resource '*', headers: :any, methods: [:get, :post]
  end
end

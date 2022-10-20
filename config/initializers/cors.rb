Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    origins 'http://localhost:4201, https://app-staging.utterbounty.io'
    resource '*', headers: :any, methods: [:get, :post]
  end
end

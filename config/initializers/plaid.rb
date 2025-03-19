plaid_config = Plaid::Configuration.new
plaid_config.server_index = Plaid::Configuration::Environment["sandbox"]
plaid_config.api_key["PLAID-CLIENT-ID"] = ENV["PLAID_CLIENT_ID"]
plaid_config.api_key["PLAID-SECRET"] = ENV["PLAID_SECRET"]

# Create an API client instance
api_client = Plaid::ApiClient.new(plaid_config)

# Create a Plaid API instance to use across the application
PlaidClient = Plaid::PlaidApi.new(api_client)

api_client.create_connection do |builder|
  builder.use Faraday::Response::Logger
end

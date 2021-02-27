# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :redpay,
  ecto_repos: [Redpay.Repo]

# Configures the endpoint
config :redpay, RedpayWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "Vc11Ha1OSArqMW+ve2D+Ja6qHfbOjbIJ33TAzndiT/qx8zb8IOKa9ZAo1yjh7yN0",
  render_errors: [view: RedpayWeb.ErrorView, accepts: ~w(json), layout: false],
  pubsub_server: Redpay.PubSub,
  live_view: [signing_salt: "ZJPI5SDS"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"

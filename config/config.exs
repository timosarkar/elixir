# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :myapp,
  ecto_repos: [Myapp.Repo]

# Configures the endpoint
config :myapp, MyappWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "LZm8x0SYCamtQxktQ7r2Ujpb5KC8URhi8u7iGzhEQ4NI2R88y7e4gbBkiGMJ2v6t",
  render_errors: [view: MyappWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: Myapp.PubSub,
  live_view: [signing_salt: "vMVXK2n5"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"

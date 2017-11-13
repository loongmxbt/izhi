# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :izhi,
  ecto_repos: [Izhi.Repo]

# Configures the endpoint
config :izhi, IzhiWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "PGSW43NkQG6RRi17b/DuPeCBEAOrC9TJBSu6clqrLXycui7lmsWqMUhdNjKqqtn6",
  render_errors: [view: IzhiWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Izhi.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"

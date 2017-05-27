# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :wombat_got_talent,
  ecto_repos: [WombatGotTalent.Repo]

# Configures the endpoint
config :wombat_got_talent, WombatGotTalent.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "ONOjsyDIXsiPoiEUgdy9xL8taM5rXvIZOwsumds8nNCPbIR1byGoDwfvrZIy3ryx",
  render_errors: [view: WombatGotTalent.ErrorView, accepts: ~w(html json)],
  pubsub: [name: WombatGotTalent.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"

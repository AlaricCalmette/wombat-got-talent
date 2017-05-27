use Mix.Config

# In this file, we keep production configuration that
# you likely want to automate and keep it away from
# your version control system.
#
# You should document the content of this
# file or create a script for recreating it, since it's
# kept out of version control and might be hard to recover
# or recreate for your teammates (or you later on).
config :wombat_got_talent, WombatGotTalent.Endpoint,
  secret_key_base: "IFm747MH3FC8c31vuSbC2hc6ADajLVuKP3GA7kL6saBrVsPNsnZoJ+4wsgO40tSd"

# Configure your database
config :wombat_got_talent, WombatGotTalent.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "postgres",
  password: "postgres",
  database: "wombat_got_talent_prod",
  pool_size: 20

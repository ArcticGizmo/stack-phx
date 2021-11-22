use Mix.Config

config :__example__app__name__,
  namespace: __EXAMPLE__MODULE__NAME__,
  ecto_repos: [__EXAMPLE__MODULE__NAME__.Repo]

# Configures the endpoint
config :__example__app__name__, __EXAMPLE__MODULE__NAME__Web.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "dOk2CGM0B+s2SE1ILmTAHNCa+zHcgDxTgbGm1J5tJSUTbBNJ8jLloCZvmdXy3hbl",
  render_errors: [view: __EXAMPLE__MODULE__NAME__Web.ErrorView, accepts: ~w(json), layout: false],
  pubsub_server: __EXAMPLE__MODULE__NAME__.PubSub,
  live_view: [signing_salt: "QAhKoI4G"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

config :phoenix, :json_library, Jason

import_config "#{Mix.env()}.exs"

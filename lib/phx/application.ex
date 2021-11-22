defmodule __EXAMPLE__MODULE__NAME__.Application do
  use Application

  def start(_type, _args) do
    children = [
      # __EXAMPLE__MODULE__NAME__.Repo,
      {Phoenix.PubSub, name: __EXAMPLE__MODULE__NAME__.PubSub},
      __EXAMPLE__MODULE__NAME__Web.Endpoint
    ]

    opts = [strategy: :one_for_one, name: __EXAMPLE__MODULE__NAME__.Supervisor]
    Supervisor.start_link(children, opts)
  end

  def config_change(changed, _new, removed) do
    __EXAMPLE__MODULE__NAME__Web.Endpoint.config_change(changed, removed)
    :ok
  end
end

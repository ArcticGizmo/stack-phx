defmodule __EXAMPLE__MODULE__NAME__Web.Router do
  use __EXAMPLE__MODULE__NAME__Web, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", __EXAMPLE__MODULE__NAME__Web do
    pipe_through :api

    get "/hello", PageController, :hello
  end
end

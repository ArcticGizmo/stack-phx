defmodule __EXAMPLE__MODULE__NAME__Web.PageController do
  use __EXAMPLE__MODULE__NAME__Web, :controller

  def hello(conn, _params) do
    respond(conn, 200, %{
      message:
        "Hello, this is an example api response from __EXAMPLE__MODULE__NAME__ (__example__app__name__)"
    })
  end
end

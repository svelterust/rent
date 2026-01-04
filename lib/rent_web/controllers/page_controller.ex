defmodule RentWeb.PageController do
  use RentWeb, :controller

  def home(conn, _params) do
    render(conn, :home)
  end
end

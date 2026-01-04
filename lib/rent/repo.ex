defmodule Rent.Repo do
  use Ecto.Repo,
    otp_app: :rent,
    adapter: Ecto.Adapters.SQLite3
end

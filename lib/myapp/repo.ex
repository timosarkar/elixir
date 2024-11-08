defmodule Myapp.Repo do
  use Ecto.Repo,
    otp_app: :myapp,
    adapter: Ecto.Adapters.SQLite3
end

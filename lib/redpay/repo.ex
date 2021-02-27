defmodule Redpay.Repo do
  use Ecto.Repo,
    otp_app: :redpay,
    adapter: Ecto.Adapters.Postgres
end

defmodule LearnEcto.Repo do
  use Ecto.Repo,
    otp_app: :learn_ecto,
    adapter: Ecto.Adapters.Postgres
end

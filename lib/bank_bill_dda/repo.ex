defmodule BankBillDda.Repo do
  use Ecto.Repo,
    otp_app: :bank_bill_dda,
    adapter: Ecto.Adapters.Postgres
end

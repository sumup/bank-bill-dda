defmodule BankBillDdaWeb.Router do
  use BankBillDdaWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", BankBillDdaWeb do
    pipe_through :api

    get("/dda/:cpforcnpj", BankBillDdaController, :index)
  end

  if Mix.env() in [:dev, :test] do
    import Phoenix.LiveDashboard.Router

    scope "/" do
      pipe_through [:fetch_session, :protect_from_forgery]

      live_dashboard "/dashboard", metrics: BankBillDdaWeb.Telemetry
    end
  end
end

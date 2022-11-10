defmodule BankBillDdaWeb.PageController do
  use BankBillDdaWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end

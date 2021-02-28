defmodule RedpayWeb.WelcomeController do
  use RedpayWeb, :controller

  alias Redpay.Numbers

  def index(conn, %{"filename" => filename}) do
    filename
      |> Numbers.sum_from_file()
      |> handle_response(conn)
  end

  defp handle_response({:ok, %{result: result}}, conn) do
    conn
      |> put_status(:ok)
      |> json(%{message: "Welcome to Redpay API. Here is your number #{result}"})
  end

  defp handle_response({:error, _reason}, conn) do
    conn
      |> put_status(:bad_request)
      |> json(_reason)
  end
end

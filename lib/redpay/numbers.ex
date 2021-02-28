defmodule Redpay.Numbers do
  def sum_from_file(filename) do
    "#{filename}.csv"
    #Pipe operator
    |> File.read()
    |> handle_file()
  end

  defp handle_file({:ok, result}) do
    result =
      result
    |> String.split(",")
    |> Stream.map(fn number -> String.to_integer(number) end)
    |> Enum.sum()
    #Map
    {:ok, %{result: result}}
  end
  defp handle_file({:error, _reason}), do: {:error, %{message: "Invalid file!"}}
end

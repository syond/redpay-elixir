defmodule Redpay.NumbersTest do
  use ExUnit.Case

  alias Redpay.Numbers

  describe "sum_from_file/1" do
    test "when receive a file with numbers, return the sum of these numbers" do
      response = Numbers.sum_from_file("numbers")

      expected_response = {:ok, %{result: 37}}

      assert response == expected_response
    end

    test "when not receive a file with numbers, return an error" do
      response = Numbers.sum_from_file("goiaba")

      expected_response = {:error, %{message: "Invalid file!"}}

      assert response == expected_response
    end
  end
end

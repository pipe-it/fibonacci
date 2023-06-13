defmodule Fibonacci4 do
  def calculate(n) when n <= 0 do
    {:error, "Invalid input"}
  end

  def calculate(n) when n == 1 do
    [0]
  end

  def calculate(n) do
    fib_list = [0, 1]
    calculate_fib(n, fib_list)
  end

  defp calculate_fib(2, fib_list) do
    fib_list
  end

  defp calculate_fib(n, fib_list) do
    case Enum.slice(fib_list, -2, 2) do
      [prev, current] ->
        next_number = prev + current
        new_fib_list = fib_list ++ [next_number]
        calculate_fib(n - 1, new_fib_list)

      _ ->
        fib_list
    end
  end
end

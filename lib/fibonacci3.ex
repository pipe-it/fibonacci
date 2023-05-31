defmodule Fibonacci3 do
  def fib(n) do
    comp_fib(n, [], 0, 1)
    |> Enum.reverse()
  end

  defp comp_fib(0, acc, _prev, _curr), do: [0 | acc]
  defp comp_fib(1, acc, _prev, curr), do: [curr | acc]

  defp comp_fib(n, acc, prev, curr) do
    next_val = prev + curr
    comp_fib(n - 1, [curr | acc], curr, next_val)
  end
end

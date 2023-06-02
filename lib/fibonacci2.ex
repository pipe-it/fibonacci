defmodule Fibonacci2 do
  def fib(n) when n < 0, do: []
  def fib(n), do: fib(n, 0, 1, [])

  defp fib(0, _prev, _curr, acc), do: reverse(acc)

  defp fib(n, prev, curr, acc) do
    new_acc = [curr | acc]
    new_prev = curr
    new_curr = prev + curr
    fib(n - 1, new_prev, new_curr, new_acc)

  end

  defp reverse(list) do
    reverse(list, [])
  end

  defp reverse([], acc), do: acc
  defp reverse([head | tail], acc), do: reverse(tail, [head | acc])
end

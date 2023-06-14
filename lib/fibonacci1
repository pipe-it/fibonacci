defmodule Fibonacci1 do
  defp comp_fib(0), do: [0 | 0]
  defp comp_fib(1), do: [1 | 0]

  defp comp_fib({seq, n}) do
    {seq, [h | t]} = comp_fib({seq, n - 1})
    n = [h + t | h]
    seq = [h + t | seq]
    {seq, n}
  end

  def fib(n) do
    {seq, n} = comp_fib({[0], n})
  end
end

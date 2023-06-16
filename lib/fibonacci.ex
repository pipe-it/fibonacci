defmodule Fibonacci do
  def fib(n) do
    if n > 0 do
      fib(0, 1, [0], n - 1)
    else
      "Please enter a value greater than zero"
    end
  end

  def fib(_prev, _curr, acc, 0) do
    acc |> Enum.reverse()
  end

  def fib(prev, curr, acc, n) do
    fib(curr, prev + curr, [curr | acc], n - 1)
  end
end

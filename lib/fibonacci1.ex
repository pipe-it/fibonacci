defmodule Fibonacci1 do
  def fib(0) do
    "Please enter an integer"
  end

  def fib(1) do
    [0]
  end

  def fib(2) do
    [0, 1]
  end

  def fib(n) do
    if n >= 3 do
      fib(0, 1, [0], n - 1)
    else
      "Please enter a positive integer"
    end
  end

  def fib(_prev, _curr, acc, 0) do
    acc |> Enum.reverse()
  end

  def fib(prev, curr, acc, n) do
    fib(curr, prev + curr, [curr | acc], n - 1)
  end
end

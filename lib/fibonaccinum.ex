defmodule Fibonaccinum do
  def fib(n) do
    if n < 2 do
      n
    else
      fib(n - 2) + fib(n - 1)
    end
  end
end

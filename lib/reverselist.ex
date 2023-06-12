defmodule Reverselist do
  def take(list, n) do
    take([], list, n)
  end

  defp take(acc, [], 0) do
    acc
    |> Enum.reverse()
  end

  defp take(acc, _list, 0) do
    acc
    |> Enum.reverse()
  end

  defp take(acc, list, n) do
    [h | t] = list
    take([h | acc], t, n - 1)
  end

  def drop([], _n) do
    []
  end

  def drop(t, 0) do
    t
  end

  def drop(list, n) do
    [_h | t] = list
    drop(t, n - 1)
  end
end

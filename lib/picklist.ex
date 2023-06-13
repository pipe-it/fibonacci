defmodule Picklist do
  def pick(list, v) do
    pick([], list, v)
  end

  defp pick(acc, [], _v) do
    IO.puts("Value do not exist")
    acc
  end

  defp pick(acc, [v | t], v) do
    acc
    |> Enum.reverse()

    pick([h | acc], t, v)
  end
end

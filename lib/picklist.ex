defmodule Picklist do
  defp pick(acc, [], 0) do
    IO.puts("Value do not exist")
    # |> Enum.reverse()
  end

  if v = acc do
    defp pick(acc, _list, 0) do
      acc
      |> Enum.reverse()
    end
  else
    pick()
  end

  defp pick(acc, list, v) do
    [h | t] = list
    pick([h | acc], t, v)
  end
end

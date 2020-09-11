defmodule Split do

  def split(str, <<del::utf8>>), do: to_charlist(str) |> _split(del)

  defp _split(list, del), do: _split(list, [], del)
  defp _split(tail, [head | front], del) when del == head,
    do: as_str_arr(front) ++ _split(tail, del)

  defp _split([], front, _), do: as_str_arr(front)
  defp _split([head | tail], front, del), do: _split(tail, [head | front], del)

  defp as_str_arr(list), do: [to_string(Enum.reverse(list))]

end

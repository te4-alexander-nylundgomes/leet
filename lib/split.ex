defmodule Split do
  @moduledoc """
  Documentation for `Split`.
  """

  @doc """
  Hello world.

  ## Examples

      iex> Split.hello()
      :world

  """
  def hello do
    :world
  end

  def concat([], list), do: list
  def concat([value], list), do: [value | list]
  def concat([head | tail], list) do
    [head | concat(tail, list)]
  end


  def split(list, char), do: _split(list, [], char)
  defp _split(tail, [head | front], char) when char == head, do: concat([Enum.reverse(front)], split(tail, char))
  defp _split([], front, _), do: [Enum.reverse(front)]

  defp _split([head | tail], front, char), do: _split(tail, [head | front], char)

end

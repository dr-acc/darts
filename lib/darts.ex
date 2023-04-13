defmodule Darts do
  @type position :: {number, number}

  @doc """
  Calculate the score of a single dart hitting a target
  """

  @spec score(position :: position) :: integer
  def score({x, y}) do
    cond do
      hit?(1, {x, y}) -> 10
      hit?(5, {x, y}) -> 5
      hit?(10, {x, y}) -> 1
      true -> 0
    end
  end

  defp hit?(r, {x, y}) do
    r * r - x * x - y * y >= 0
  end
end

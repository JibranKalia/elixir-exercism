defmodule BeerSong do
  @doc """
  Get a single verse of the beer song
  """
  @spec verse(integer) :: String.t()
  def verse(number) do
    # Your implementation here...
    case number do
      0 -> "No more bottles of beer on the wall, no more bottles of beer.\nGo to the store and buy some more, 99 bottles of beer on the wall.\n"
      1 -> "1 bottle of beer on the wall, 1 bottle of beer.\nTake it down and pass it around, no more bottles of beer on the wall.\n"
      2 -> "2 bottles of beer on the wall, 2 bottles of beer.\nTake one down and pass it around, 1 bottle of beer on the wall.\n"
      x -> "#{x} bottles of beer on the wall, #{x} bottles of beer.\nTake one down and pass it around, #{x - 1} bottles of beer on the wall.\n"
    end
  end

  @doc """
  Get the entire beer song for a given range of numbers of bottles.
  """
  @spec lyrics(Range.t()) :: String.t()
  def lyrics(range) do
    range
    |> Enum.reduce(%{}, fn i, acc -> Map.put(acc, i, verse(i)) end)
    |> Map.values
    |> Enum.join("\n")
    # |> Enum.reduce("", fn verse, all -> verse <> all  end)

  end

  def lyrics do
    lyrics(99..0)
  end
end

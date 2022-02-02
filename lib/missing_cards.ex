defmodule MissingCards do

  @doc ~S"""
  Parses the given line into a tuple with {count, name}

  ## Examples

      iex> MissingCards.parseOneMtgoLine("4 Battlefield Raptor")
      {4, "Battlefield Raptor"}

  """
  def parseOneMtgoLine(line) do
    [count | name_parts] = String.split(line)
    name = Enum.join(name_parts, " ")

    {String.to_integer(count), name}
  end


  def parseOneHavesLine(line) do
    [count | rest] = String.split(line, ",")

    name =
      Enum.slice(rest, 0..-7)
      |> Enum.join(",")
      |> String.trim()

    {String.to_integer(count), name}
  end
end

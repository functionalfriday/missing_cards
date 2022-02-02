defmodule MissingCards do

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

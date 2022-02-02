defmodule MissingCards do

  def parseOneLine(line) do
    [count | name_parts] = String.split(line)
    name = Enum.join(name_parts, " ")
  end
end

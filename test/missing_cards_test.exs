defmodule MissingCardsTest do
  use ExUnit.Case

  @haves "1, Battlefield Raptor, M20, NearMint, 0.03, Normal, German, 2021-11-27"

  test "greets the world" do
    assert (MissingCards.parseOneLine("4 Battlefield Raptor") == {})
  end
end

defmodule MissingCardsTest do
  use ExUnit.Case
  doctest MissingCards

  test "MTGO format line gets parsed into number and name" do
    assert (MissingCards.parseOneMtgoLine("4 Battlefield Raptor") == {4, "Battlefield Raptor"})
  end

  test "Another MTGO format line gets parsed into number and name" do
    assert (MissingCards.parseOneMtgoLine("2 Green Turtle") == {2, "Green Turtle"})
  end

  test "DragonShield CardScanner format line gets parsed into number and name" do
    actual = MissingCards.parseOneHavesLine("1, Battlefield Raptor, M20, NearMint, 0.03, Normal, German, 2021-11-27")
    assert (actual == {1, "Battlefield Raptor"})
  end

  test "DragonShield CardScanner format line gets parsed into number and name even when name contains a comma" do
    actual = MissingCards.parseOneHavesLine("1, Teferi, Master of Time, M21, NearMint, 8.46, Normal, German, 2022-02-02")
    assert (actual == {1, "Teferi, Master of Time"})
  end
end

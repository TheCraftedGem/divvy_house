defmodule DivvyHouseTest do
  use ExUnit.Case
  doctest DivvyHouse

  test "convert coordinates to warehouse box id" do
    # assert DivvyHouse.answer([2, 2]) == 5
    # assert DivvyHouse.answer([2, 4]) == 12
    # assert DivvyHouse.answer([4, 1]) == 10
    # assert DivvyHouse.answer([4, 2]) == 14
    assert DivvyHouse.answer([100000, 100000]) == 20000000001
  end
end

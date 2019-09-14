defmodule DivvyHouse do
  def answer(coordinates, id \\ 0)
  def answer([x, 1], id), do: (summation(x) + id)
  def answer([1, y], id), do: answer([y - 1, 1], id + 1)
  def answer([x, y], id), do: answer([x - 1, y + 1], id + 1)

  def summation(1), do: 1
  def summation(n), do: n + summation(n - 1)
end


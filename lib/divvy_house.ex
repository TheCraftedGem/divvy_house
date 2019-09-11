require IEx
defmodule DivvyHouse do
  defstruct x: 1, y: 1, id: 1

  def answer([x, y]) do
    traverse_x(%__MODULE__{x: 1, y: 1, id: 1}, x)
    |> traverse_y(y)
    |> id
  end




  # def answer([x, y]) do
  #   d = 1

  #   an = a1 + d(n - 1)
  # end

  def traverse_x(%{x: x} = struct, x_target) when x == x_target  do
    struct
  end

  def traverse_x(struct, x_target) do
    traverse_x(
      %{struct | id: struct.id + struct.x + 1, x: struct.x + 1},
      x_target
    )
  end

  def traverse_y(%{y: y} = struct, y_target) when y == y_target do
    struct
  end


  def traverse_y(struct, y_target) do
    traverse_y(
      %{struct | id: struct.id + struct.x + struct.y - 1, y: struct.y + 1},
      y_target
    )
  end

  def id(struct), do: struct.id
end

```elixir
list = [1, 2, 3, 4, 5]

Enum.reduce(list, 0, fn
  x when x > 3 -> x + 1
  _ -> 0
end)

#or even better
list |> Enum.filter(&(&1 > 3)) |> Enum.sum()
```
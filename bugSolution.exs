```elixir
list = [1, 2, 3, 4, 5]

Enum.each(list, fn x ->
  if x == 3 do
    # Instead of exiting, set a flag
    :ok = 3
  end
  IO.puts(x)
end)

#Handle the flag

if :ok == 3 do
  IO.puts("Process should continue after handling 3")
end
```
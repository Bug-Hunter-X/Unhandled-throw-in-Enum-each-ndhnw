```elixir
list = [1, 2, 3, 4, 5]

try do
  Enum.each(list, fn x ->
    if x == 3 do
      throw(:three)
    else
      IO.puts(x)
      IO.puts("Next")
    end
  end)
catch
  :three -> IO.puts("Three was encountered!")
end
```
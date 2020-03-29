defmodule ListOperations do

def square([]), do: []
def square(list), do: square(list,[])
def square([], list), do: list
def square([head|tail], list), do: square(tail, list ++ [head * head]) 


def square_map(list), do:
  list |> Enum.map(fn(x) -> x*x end)

end

IO.inspect (ListOperations.square([1,2,3]))
IO.inspect (ListOperations.square_map([1,2,3]))
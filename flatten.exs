defmodule ListOperations do

def flatten([]), do: []
def flatten([head|tail]), do: head ++ flatten(tail)

end

IO.inspect (ListOperations.flatten([[1,2],[3,4],[5,6,7]]))
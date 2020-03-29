defmodule ListOperations do

 def find_in_list(_, []), do: "not_found"
 def find_in_list(element, [head|tail]) do
    if element == head do
      "{found, #{element} }"
      else
       find_in_list(element, tail)
    end
  end
end

IO.puts (ListOperations.find_in_list(72, [1,72,3,4]))
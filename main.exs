

defmodule ListOperations do
  def find_maximum([head|tail]), do: _max(head, tail)

  defp _max(current, []), do: current

  defp _max(current, [head|tail]) when current < head do
    _max(head, tail)
  end
  defp _max(current, [_|tail]), do: _max(current, tail)

  def find_minimum([head|tail]), do: _min(head, tail)
  defp _min(current, []), do: current

  defp _min(current, [head|tail]) when current > head do
    _min(head, tail)
  end
  defp _min(current, [_|tail]), do: _min(current, tail)

 def find_in_list(_, []), do: "not_found"
 def find_in_list(element, [head|tail]) do
    if element == head do
      "{found, #{element} }"
      else
       find_in_list(element, tail)
    end
  end

  def delete_first_from_list(_, []), do: "empty_list"
  def delete_first_from_list(elem, list), do: delete_first_from_list(elem, list, [])
  defp delete_first_from_list(element, [head|tail], list) do
      if element == head do
        list ++ tail
        else
        delete_first_from_list(element, tail, list ++ [head])
      end
    end
  defp delete_first_from_list(_,[],list), do: list

  def flatten([]), do: []
  def flatten([head|tail]), do: head ++ flatten(tail)


  def square([]), do: []
  def square(list), do: square(list,[])
  def square([], list), do: list
  def square([head|tail], list), do: square(tail, list ++ [head * head]) 

  def square_map(list), do: list |> Enum.map(fn(x) -> x*x end)
  

  def filter(_,[]), do: []
  def filter(funct, [head|tail]) do
    if funct.(head) == true do [head | filter(funct, tail)]
    else filter(funct, tail) end
  end


end



#IO.puts "Maximum:"
#IO.puts (ListOperations.find_maximum([1,72,3,4]))
#IO.puts "Minimum:"
#IO.puts (ListOperations.find_minimum([1,72,3,4]))
#IO.puts (ListOperations.find_in_list(72, [1,72,3,4]))
#IO.inspect (ListOperations.delete_first_from_list(5, [1,72, 3, 4, 72]))
#IO.inspect (ListOperations.flatten([[1,2],[3,4],[5,6,7]]))
#IO.inspect (ListOperations.square([1,2,3]))
#IO.inspect (ListOperations.square_map([1,2,3]))
IO.inspect (ListOperations.filter(fn x  -> rem(x,3) ==  0 end, [1,2,3,4,5,6]))
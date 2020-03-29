

defmodule ListOperations do

  def reverse_list(list), do: reverse_list([], list)
  defp reverse_list(reversed, [head|tail]) do
    reversed_list = [head] ++ reversed               
    reverse_list(reversed_list, tail)
  end
  defp reverse_list(reversed, []), do: reversed

end

IO.puts "The initial List:"
IO.inspect [1,2,3,4]
IO.puts "The reversed List:"
IO.inspect (ListOperations.reverse_list([1,2,3,4]))
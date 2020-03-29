

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
end

IO.puts "Maximum:"
IO.puts (ListOperations.find_maximum([1,72,3,4]))
IO.puts "Minimum:"
IO.puts (ListOperations.find_minimum([1,72,3,4]))
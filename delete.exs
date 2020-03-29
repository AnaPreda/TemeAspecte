defmodule ListOperations do

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


end

IO.inspect (ListOperations.delete_first_from_list(72, [1,72,3,4, 72]))
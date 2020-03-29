defmodule ListOperations do

def filter(_,[]), do: []
  def filter(funct, [head|tail]) do
    if funct.(head) == true do [head | filter(funct, tail)]
    else filter(funct, tail) end
  end

end


IO.inspect (ListOperations.filter(fn x  -> rem(x,3) ==  0 end, [1,2,3,4,5,6]))
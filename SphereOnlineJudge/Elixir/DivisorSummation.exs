#https://www.spoj.com/problems/DIVSUM/


defmodule My do

  def divisor([]), do: nil
  def divisor [head | tail] do

    sum = 0

    sum = quotientSum sum, head, head-1

    case sum do
    
      sum when sum < 2 -> nil
    
      _ -> IO.puts sum
    
    end

    divisor tail

  end


  def quotientSum(sum, head_number, divide_number) when divide_number != 0 do

    sum = 

    case rem head_number, divide_number do
  
      quotient when quotient == 0 -> sum + divide_number

      _ -> sum
    
    end

    quotientSum sum, head_number, divide_number-1

  end
  def quotientSum(sum, _head_number, divide_number) when divide_number == 0, do: sum
end

My.divisor Enum.to_list 1 .. 500000

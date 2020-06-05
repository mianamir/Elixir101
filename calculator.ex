defmodule Calculator do
    def main(number1, number2, operator_) do
        cal_fun(number1, number2, operator_)
    end

    defp cal_fun(number1, number2, operator_) when number1 > 0 and number1 > 0 do
        # IO.gets("enter age: ") |> Integer.parse
        # number1 = IO.gets("Enter 1st number: ") |> Integer.parse
        # number2 = IO.gets("Enter 2nd number: ") |> Integer.parse
        # operator_ = IO.gets("Enter operator(+, -, *, /): ") |> String.trim

        if number1 && number2 && operator_ do
            if operator_ = "+" do
                result = number1 + number2
                IO.puts "Sum of"  <> " " <> Integer.to_string(number1) <> " and " <> " " <> Integer.to_string(number2) <> " is " <> " " <> Integer.to_string(result)
            end
            if operator_ = "-" do
                result = number1 - number2
                IO.puts "Sub of"  <> " " <> Integer.to_string(number1) <> " and " <> " " <> Integer.to_string(number2) <> " is " <> " " <> Integer.to_string(result)
            end
            if operator_ = "*" do
                result = number1 * number2
                IO.puts "Mul of"  <> " " <> Integer.to_string(number1) <> " and " <> " " <> Integer.to_string(number2) <> " is " <> " " <> Integer.to_string(result)
            end
            if operator_ = "/" do
                result = div(number1,number2)
                IO.puts "Div of"  <> " " <> Integer.to_string(number1) <> " and " <> " " <> Integer.to_string(number2) <> " is " <> " " <> Integer.to_string(result)
            end
        else
            IO.puts "Error: Unable to do calcualtions..."
        end
    end
end
defmodule PatternMatching do
    def do_pattern_matching do
        [width, height] = [20, 30]
        IO.puts "Width: #{width}"


    end


    def do_anonmous_fun() do
        
        get_sum = fn (x,y) -> x + y end

        IO.puts "6 + 6: #{get_sum.(6, 6)}"

        # get_less = &(&1 - &2)

        # IO.puts "56 - 6: #{get_less.(56, 6)}"

        add_sum = fn
            {x, y} -> IO.puts "#{x} + #{y} = #{x+y}"
            {x, y, z} -> IO.puts "#{x} + #{y} + #{z} = #{x+y+z}"
        
        end
        
        add_sum.({2,2})
        add_sum.({2,2,3})


        IO.puts "Factorial of 3: #{factorial(4)}"

    end


    def factorial(num) do
        if num <= 1 do
            1
        else
            result = num * factorial(num - 1)
            result
        end
    end







end
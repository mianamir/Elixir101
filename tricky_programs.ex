defmodule Tricky do
    def fahrenheit_to_celsius(celsius) do
        fahrenheit = (div(9,5) * celsius + 32)
        IO.puts "#{celsius} C is equal to: #{fahrenheit} F"
    end

    def computing_the_volume_of_a_cylinder(radius, length) do
        area = radius * radius * 3.14
        volume = area * length
        IO.puts "Cylinder with #{radius} radius, and #{length} length will have
        #{volume} cm^3 volume."
        
    end

    def converting_feet_into_meters(num_feet) do
        meters =  0.305 * num_feet
        IO.puts "#{num_feet} feet will be #{meters} m."
    end

    def converting_pounds_into_kilograms(num_pounds) do
        kilograms = num_pounds * 0.454
        IO.puts "#{num_pounds} pounds will be #{kilograms} kg."
    end

    def summing_the_digits_in_an_integer(number) do
        result = number |> Integer.digits |> Enum.sum
        IO.puts "#{number} digits sum will be #{result}."
    end









end
defmodule Strings do

def do_strings() do
    name = "Mian Amir Savvy"
    IO.puts "Length: #{String.length(name)}"
    longer_name = name <> " " <> " is longer."
    IO.puts "My ? #{String.contains?(name, "Mia")}"

    IO.puts "First #{String.first(name)}"
    IO.puts "Index 4 #{String.at(name, 4)}"
    IO.puts "Substring #{String.slice(name, 2, 5)}"
    
    IO.inspect String.split(longer_name)

    IO.puts String.reverse(longer_name)
    IO.puts String.upcase(longer_name)
    IO.puts String.downcase(longer_name)
    IO.puts String.capitalize(longer_name)


    4 * 10 |> IO.puts




end

def do_mathematics() do
    
    IO.puts "5 + 4 = #{5+4}"
    IO.puts "5 - 4 = #{5-4}"
    IO.puts "5 * 4 = #{5*4}"
    IO.puts "5 / 4 = #{5/4}"
    IO.puts "5 div 4 = #{div(5,4)}"
    IO.puts "5 rem 4 = #{rem(5,4)}"
end

def do_comparison() do
    IO.puts "4 == 4.0 #{4 == 4.0}"
    IO.puts "4 === 4.0 #{4 === 4.0}"
    IO.puts "4 != 4.0 #{4 != 4.0}"
    IO.puts "4 !== 4.0 #{4 !== 4.0}"
end

def do_boolean() do
    age = 16

    IO.puts "Vote and Drive: #{(age >= 16) and (age <= 18)}"
    IO.puts "Vote or Drive: #{(age >= 16) or (age <= 18)}"
    
    IO.puts not true



end




end
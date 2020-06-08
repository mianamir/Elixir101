defmodule Tuples do
    def do_tuples() do
        my_stats = {123, 56.7, :Elixir}

        IO.puts "Tuple #{is_tuple(my_stats)}"

        my_stats2 = Tuple.append(my_stats, 56)

        IO.puts "Age #{elem(my_stats2, 3)}"
        IO.puts "Size #{tuple_size(my_stats2)}"
        my_stats3 = Tuple.delete_at(my_stats2, 0)
        IO.puts "Tuple #{is_tuple(my_stats)}"
        my_stats4 = Tuple.insert_at(my_stats3, 0, 789)

        may_zeros = Tuple.duplicate(0, 5)

        # Pattern matching 
        {weight, height, name} = {123, 6.25, "Amir Savvy"}
        IO.puts "Weight: #{weight}"



    end
end
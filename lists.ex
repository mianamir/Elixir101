defmodule Lists do
    def do_lists do
        list1 = [1,2,3]
        list2 = [4,5,6]

        list3 = list1 ++ list2
        list4 = list1 -- list2

        IO.puts 6 in list4

        [head | tail] = list3
        IO.puts "Head: #{head}"

        IO.write "Tail: "
        IO.inspect tail

        IO.inspect [34, 56], char_lists: :as_lists


        Enum.each tail, fn item ->
            IO.puts item
        end

        fruits = ["Mango", "Banana", "Grapes", "Orange"]

        Enum.each fruits, fn fruit ->
            IO.puts fruit
        end


        # using recursion
        IO.puts "Using recurion"
        display_list(fruits)
        IO.puts "After delete an item"
        IO.puts display_list(List.delete(fruits, "Mango"))
        IO.puts display_list(List.delete_at(fruits, 1))
        IO.puts display_list(List.delete_at(fruits, 4, "Mango"))

        IO.puts List.first(fruits)
        IO.puts List.last(fruits)

        my_stats = [name: "Amir": height: 5.8]


    end

    
    def display_list([fruit|fruits]) do
        IO.puts fruit
        display_list(fruits)
    end

    def display_list([]), do: nil
end
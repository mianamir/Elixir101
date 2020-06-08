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

        

    end
end
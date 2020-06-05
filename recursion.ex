defmodule Recursion do
    def print_multiple_items(msg, n) when n <= 1 do
        IO.puts msg
    end

    def print_multiple_items(msg, n) do
        IO.puts msg
        print_multiple_items(msg, n - 1)
    end
end
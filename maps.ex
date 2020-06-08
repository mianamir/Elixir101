defmodule Maps do
    def do_maps do
        capitals = %{"Alabama" => "Montgmery", "Alaska" => "Juneau"}

        IO.puts "Capitals of Alaska: #{capitals["Alaska"]}"

        capitals2 = %{alabama: "Montgmery", alaska: "Juneau"}

        IO.puts "Capitals of Alaska: #{capitals2.alaska]}"

        capitals3 = Dict.put_new(capitals, "One", "Big Test")


    end
end
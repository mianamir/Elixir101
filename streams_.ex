defmodule Streams do
    def demo do
        list = [1,2,3,4,5]
        stream = Stream.each(list, fn(x) -> x end)
        Enum.to_list(stream)
        Enum.to_list(Stream.timer(1_000))

        
    end
end
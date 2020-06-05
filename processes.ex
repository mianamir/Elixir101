defmodule SavvyProcess do
    @doc """
    => Processes are only way to achieve concurrency in Elixir
    => If multiple functions are run together, this will be parallelism
    => Processes are isolated and don't share any memory 
    => But to share any thing like data between two processes can be done via
    message passing
    => spawn() fun in Elixir to create process

    => In Erlang / Elixir everthing is process but in other langauges are threads

    1- Create Process 
    pid = spawn(fn -> IO.inspect "Amir Savvy" end)

    2- Get process ID
    sel()

    3- Check process is alive or not
    Process.alive?(pid)
    Process.alive?(self())

    4- How processes communicate via message passing 
  """

    def start_link do
        pid = spawn_link(fn -> loop() end )

        pid
    end

    defp loop() do
        receive do
            {:a, from, msg} ->
            IO.inspect ":a message received."
            IO.inspect msg
            send from, "I received the message."
            loop()
            
            {:b, msg} ->
                IO.inspect ":b message received."
                IO.inspect msg
                loop()
            _ -> loop()
        after 10_000 ->
            IO.inspect "timout..."
        end
        
    end





end
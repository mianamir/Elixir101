defmodule Atm do
    def menu() do
        IO.puts "Amir Savvy Bank App"
        IO.puts "1- Add Customer"
        IO.puts "2- View Customer"
        IO.puts "3- WithDraw"
        IO.puts "4- Deposit"
        IO.puts "5- Transactions"
        IO.puts "6- Exit"
    end

    atm_func() do
        menu()
        choice = IO.gets("Enter your choice: ") |> Integer.parse
        counter = 0
        name = []
        cnic = []
        address = []
        phone = []
        age = []
        account_no = []
        account_pin = []
        balance = []
        if choice == 1 do
            IO.puts "Enter your name: "
            IO.puts "Enter your cnic, must be 14 digits long: "
            IO.puts "Enter your valid address: "
            IO.puts "Enter your phone: "
            IO.puts "Enter your age: "
            IO.puts "Enter your account pin, pin must be 4 digits long i.e 5555: "
            IO.puts "Enter your account initial balance: "
            account_no = account_no ++ Enum.random(100..10000)
            IO.puts "You account has been created successfully, below is your account details"
            IO.puts "**************************************"
            IO.puts "Account Title: #{name[counter]}" 
            IO.puts "Account No#: #{account_no[counter]}" 
            IO.puts "Account Pin: #{account_pin[counter]}"
            IO.puts "Account Balance: #{balance[counter]}"
            IO.puts "***************************************"
            counter = counter + 1
        end

        if choice == 2 do
            temp_acc_no = IO.gets("Enter your account number#: " |> Integer.parse
            is_found = false
            SIZE = get_list_size(account_no)
            for accNo <- 0..SIZE do
                if accNo == temp_acc_no do
                    IO.puts "***** Account Details *****"
                    IO.puts "Account Title: #{name[counter]}"
                    IO.puts "Account No#: #{account_no[counter]}" 
                    IO.puts "Account Pin: #{accountPin[counter]}" 
                    IO.puts "Account Balance: #{balance[counter]}"
                    IO.puts "***************************************"
                    is_found = true
                    throw(:break)
                end
            end
        end

        if is_found == false do
            IO.puts "This account number is not registered into our system"
        if choice == 3 do
            IO.puts ""
        if choice == 4 do
            IO.puts ""
        if choice == 5 do
            IO.puts ""
        if choice == 6 do
            isExit = true
            IO.puts "Thanks for using Bank App"
        else do
            IO.puts "Invalid choice"
        end


    end

    # for loop elixir using recurrsion
    def for_loop(count, action) when is_integer(count) and is_function(action) do
        acc = 0
        loop(action, count, acc)
      end
    
      defp loop(action, count, acc) do
        if acc <= count do
          action.(acc)
          loop(action, count, acc+1)
        end
      end


      def get_list_size(list) do
        length(list)
      end
end

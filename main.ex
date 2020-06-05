# Elixir module is like class
defmodule Main do
    # IF / ELSE

    def is_check() do
        if return_true() do
            :true
        else
            :false
        end
    end

    # True function
    def return_true() do
        if 2 + 2 == 4 do
            :true
        else
            :false
        end
    end

    # False function
    def return_false() do
        :false
    end


    # Unless (it is rearly used)

    def check_unless() do
        unless true do
            :false
        else
            :true
        end
    end

    # case statement (it does pattern maching actually and similar to to switch)
    def check_case(val) do
        # In Elixir everthing is expression

        result = case return_diff_val(val) do
                    # do pattern maching
                    # {:ok,new_val} = return_diff_val(val)
                    {:ok,new_val}       -> new_val
                    {:ok_added,new_val} -> new_val
                    # for other case
                    _ -> IO.inspect "Other value received."

                end
        
                
        result
    end


    # return_diff_val() function

    def return_diff_val(value) do
        result = if value > 10 do
                    {:ok,value+10}
                else
                    {:ok_added,value+30}
                end
        result
    end

    def check_cond() do
        cond do
          1 + 2 == 2 -> "1st condtion returns"
          4 + 2 == 2 -> "2nd condtion returns"
          1 + 12 == 2 -> "3rd condtion returns"
          31 + 2 == 2 -> "4th condtion returns"
          12 + 2 == 2 -> "5th condtion returns"
          1 - 2 == 1 -> "6th condtion returns"

            
        end
    end



    # Public and Private functions
    # it is macro in Elixir
    # def do
    # end 

    
    # public function
    # adding guards into the function
    # passing default values
    def products(limit, offset \\ 10) when is_integer(limit) and  is_integer(offset)  do
        IO.inspect limit
        IO.inspect offset
        IO.inspect "Products public function with integer guards"
    end

    def products(limit, offset) when is_binary(limit) and  is_binary(offset)  do
        IO.inspect "Products public function with binary/string guards"
    end

    # private function
    defp products_secrets() do
        IO.inspect "My module can access me"
    end

    def access_products_secrets() do
        products_secrets()
    end















end


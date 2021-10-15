require 'pry'

def main_function(a)
    begin
        return "input array cannot be empty" if a.size == 0  
        result_arr = []
        sorted_arr = sort(a)
        i=0
        j=sorted_arr.size - 1
        until i >= j  do
            result_arr.push(sorted_arr[i])
            result_arr.push(sorted_arr[j])
            i +=1;
            j -=1;
        end
        return result_arr unless is_odd?(sorted_arr)
        result_arr.push(sorted_arr[(sorted_arr.size/2).to_i])
    rescue 
        "input array cannot be nil"
    end
end 

def is_odd?(sorted_arr)
    (sorted_arr.size % 2) == 1 ? true : false
end

def sort(arr)
    arr.sort
end

puts main_function([-6,-9,4,8,3,2,-2,3.4,0])

# -9 <= 8 >= -6 <= 4 >= -2 <= 3.4 >= 0 <= 3 >= 2

#Time complexity Big O (n log n)
#Space complexity Big O (n)

#Test Cases
#-----------
# if n = 1
# if n = 0
# if n = nil
# if n contains negative, positive and decimal

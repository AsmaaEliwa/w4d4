require "byebug"

def my_min(arr) #o(n^2)
    (0...arr.length).each do |i1|
        return arr[i1] if (0...arr.length).all? do |i2|
            arr[i1] <= arr[i2]
        end
    end

end


def my_min(arr)  #o(n)
    min=arr.first
arr.each do |ele|
    if ele<min
        min=ele
    end
end
min
end


#LARGEST CONTIGUOUS SUB SUM
def subsum(arr) #O(n^2) because nested loop is dominant
    arr2 = []
    (0...arr.length).each do |i|
        (i...arr.length).each do |j|
            
                arr2<<[arr[i]..arr[j]]
            
        end
    end
    
    arr2.map { |subarr| subarr.sum}.max
end

#PHASE II

def subsum2(arr)
    current_max=0
    large_max=0
    arr.each_with_index do |ele|
        current_max+=ele
        if current_max > 0 && current_max > large_max
            debugger
            large_max= current_max
        elsif current_max < 0
            current_max = 0
        end

  end
large_max

end
# arr=[2,3,-6,7,-6,2]
# subsum2(arr)
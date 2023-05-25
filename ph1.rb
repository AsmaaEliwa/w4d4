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
        (0...arr.length).each do |j|
            if j<i
                arr2<<[arr[i],arr[j]]
            end
        end
    end
    
    arr2.map { |subarr| subarr[0] + subarr[1]}.max
end

#PHASE II

def subsum2(arr)
    largest_sum = xxxx
    
end


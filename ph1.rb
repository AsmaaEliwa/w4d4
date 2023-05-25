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




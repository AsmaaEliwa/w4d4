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

def anagram1(str,str2)
    arr = []
    until arr.length == (1..str.length).inject {|acc,el| acc * el}
        # debugger
        dic = str.split("")
        # debugger
        new_str=""
        until dic.empty?
            new_str+=dic.sample
            dic.delete(new_str[-1])
        end
        arr << new_str unless arr.include?(new_str)
    end
    arr.include?(str2)
end

# p anagram1("postuae","uaposte")

def anagram2(str1,str2)
    str1.each_char do |c|
        return false unless str2.include?(c)
        i = str2.index(c)
        str2[i] = ""
    end
    str2.empty?
end

def anagram3(str1,str2)
    str1.split("").sort.join("") == str2.split("").sort.join("")
end

# p anagram3("tarragon","arrogant")
# p anagram3("tarragon","arroganx")

def anagram4(str1,str2)
    hash1=Hash.new(0)
    hash2=Hash.new(0)

    str1.split("").map {|c| hash1[c]+=1}
    str2.split("").map {|c| hash2[c]+=1}
    hash1==hash2

end

# p anagram4("tarragon","arrogant")
# p anagram4("tarragon","arroganx")


#TWO SUMS
def bad_two_sum?(arr,target_sum)
    (0...arr.length).each do |i|
        (arr[0...i] + arr[i+1..-1]).each do |j|
            return true if i + j == target_sum
        end
    end
    false
end

#O(n^2) because nested loop

# p bad_two_sum?([3,2,4,1],6)

def okay_two_sum?(arr,target_sum) # O(n log n)
    arr.sort!
    arr.each do |e|
        unless (arr[0...arr.index(e)] + arr[arr.index(e)+1..-1]).bsearch{|element| target_sum - e == element}.nil?
        return e,(arr[0...arr.index(e)] + arr[arr.index(e)+1..-1]).bsearch{|element| target_sum - e == element}
    end
    end
end

# p okay_two_sum?([3,2,4,1],6)

def two_sum?(arr,target_sum)
    h = Hash.new
    arr.each_with_index do |e,i|
        h[e] = i
    end
end
 






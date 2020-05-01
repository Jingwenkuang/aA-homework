require "byebug"
#O(n^2) time   Sluggish Octopus   

def bubble_sort(arr)
    sorted = false

    while !sorted 
        sorted = true

        (0...arr.length - 1).each do |i|
            if arr[i].length > arr[i + 1].length 
                arr[i], arr[i + 1] = arr[i + 1], arr[i]
                sorted = false 
            end
        end
    end
    arr.last 
end

# O(n log n)  time  Dominant Octopus

def merge_sort(arr)
    return arr[0] if arr.length == 1
# debugger
    mid = arr.length / 2
    left = arr.take(mid)
    right = arr.drop(mid)

    left_sorted = merge_sort(left)
    right_sorted = merge_sort(right)

   new_arr = merge(left_sorted, right_sorted)

    new_arr.last
end

def merge(left, right)
    combined = []

    until left.empty? || right.empty?
        if left[0].length < right[0].length
            combined << left.shift
        else
            combined << right.shift 
        end
    end

    combined + left + right
end


#O(n)  Clever Octopus

def iterate(arr)
    longest = ""
    
    arr.each do |ele|
        current = ele
        if current.length > longest.length 
            longest = current 
        end
    end
    longest 
end


arr = ['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh']
# "fiiiissshhhhhh"
# p bubble_sort(arr)
# p merge_sort(arr)
# p iterate(arr)


#O(n) slow dance
def slow_dance(target, tiles_array)

    tiles_array.each_with_index do |ele, idx|
        if ele == target
            return idx 
        end
    end
end



#O(1)  Constant Dance!

def fast_dance(target, arr)
end
tiles_array = ["up", "right-up", "right", "right-down", "down", "left-down", "left",  "left-up" ]
# p slow_dance("up", tiles_array)   #0
# p slow_dance("right-down", tiles_array) #3
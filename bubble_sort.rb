def bubble_sort(array)

i = array.length - 1

	loop do
    	swapped = false
    	n=0
     	i.times do

             if array[n] > array[n+1]
                 array[n],array[n+1] = array[n+1],array[n]
                 n=n+1
                 swapped = true
             else
             n=n+1
             end
        end
	break if swapped == false 
	end
array
end


def bubble_sort_by(array)
i = array.length - 1

	loop do
    	swapped = false
    	n=0
     	i.times do

             if yield(array[n], array[n+1]) > 0 
                 array[n],array[n+1] = array[n+1],array[n]
                 n=n+1
                 swapped = true
             else
             n=n+1
             end
        end
	break if swapped == false 
	end
array
end

 bubble_sort_by(["hi","hello","hey"]) do |left,right|
     left.length - right.length
     end
end 
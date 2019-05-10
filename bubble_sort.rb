
def bubble_sort(array)
    n = array.length
    changes = true
    while changes do
        changes = false
        (n - 1).times do |i|
            if array[i] > array[i + 1]
                array[i], array[i + 1] = array[i + 1], array[i]
            changes = true
            end
        end
    end
    print array
    puts
end

my_array = [6, 12, 3, 11, 5, 10, 1, 9, 2, 4, 7, 8]

bubble_sort(my_array)


def bubble_sort_by(array)
    n = array.length
    changes = true
    while changes do
        changes = false
        (n - 1).times do |i|
            if yield(array[i], array[i + 1]) > 0
                array[i], array[i + 1] = array[i + 1], array[i]
            changes = true
            end
        end
    end
    print array
    puts
end

bubble_sort_by(["hi","hello","hey"]) do |left,right|
    left.length - right.length
end

def bubble_sort(array)
  array_copy = array.dup

  loop do
    sorted = true
    i = 0

    while i < array_copy.length - 1
      if array_copy[i] > array_copy[i + 1]
        element_backup = array_copy[i]
        array_copy[i] = array_copy[i + 1]
        array_copy[i + 1] = element_backup

        sorted = false
      end

      i += 1
    end

    break if sorted
  end

  array_copy
end

pp bubble_sort([4, 3, 78, 2, 0, 2])
pp bubble_sort([5, 4, 3, 2, 1])

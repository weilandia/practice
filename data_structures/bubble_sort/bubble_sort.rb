def bubble_sort(arr)
  n = arr.size
  until n == 0
    new_n = 0
    (1..n-1).each do |i|
      if arr[i - 1] > arr[i]
        arr[i - 1], arr[i] = arr[i], arr[i - 1]
        new_n = i
      end
    end
    n = new_n
  end
  arr
end

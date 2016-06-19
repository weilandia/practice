#iteration 1
def get_products_of_all_ints_execpt_at_index(arr)
  arr.map.with_index { |n, i|
    new_arr = arr.dup
    new_arr.delete_at(i)
    new_arr.inject(:*)
  }
end

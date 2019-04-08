def binary_search_recursive(collection, value, low=0, high=collection.length-1)
  mid = (low + high) / 2
  if low > high
    return "not found"
  elsif value == collection[mid]
    return collection[mid]
  elsif value < collection[mid]
    binary_search_recursive(collection, value, low, mid-1)
  else
    binary_search_recursive(collection, value, mid+1, high)
  end
end

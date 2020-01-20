# frozen_string_literal: true

def merge(left, right)
  merged = []
  until left.empty? && right.empty?
    if left.empty?
      merged += right.slice!(0, right.length)
    elsif right.empty?
      merged += left.slice!(0, left.length)
    elsif left[0] < right[0]
      merged << left.shift
    else
      merged << right.shift
    end
  end
  merged
end

def merge_sort(arr)
  return arr if arr.length < 2

  mid = arr.length / 2

  left = merge_sort(arr.slice!(0, mid))
  right = merge_sort(arr)
  merge(left, right)
end

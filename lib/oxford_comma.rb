def oxford_comma(array)
  size_array = array.size
  oxford = ""
  if size_array == 1
    array[0]
  elsif size_array == 2
    oxford = array.join(" and ")
    oxford
  elsif size_array >= 3
    array.each_with_index do |item, index|
      if index + 1 < size_array
        oxford << "#{item}, "
      elsif index + 1 == size_array
        oxford << "and #{item}"
      end
    end
    oxford
  end
end

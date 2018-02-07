
def shorter_oxford_comma(list)               #shorter
  last = list.length - 1

  list.each_with_index do |each, index|
    if index < last && list.length > 2      # add commas to lists with at least 3
      list [index] = "#{each}, "
    elsif list.length > 2                   # add and before the last item
      list[last] = "and #{each}"
    elsif index < last && list.length == 2  # add and after first item of list of 2
      list[index] = "#{each} and "
    end
  end

  list.join()                               #convert array to string
end

def oxford_comma(list)                      # more readable
  length = list.length

  case length
    when 1
      list.join()
    when 2
      list.join(" and ")
    else
      list.each_with_index do |each, index|
        if index < list.length-1            # add commas to all except the last
          list[index] = "#{each}, "
        else
          list[index] = "and #{each}"       # add and before last
        end
      end
        list.join()
  end
end

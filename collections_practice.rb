# https://www.dotnetperls.com/sort-ruby
# https://ruby-doc.org/core-2.2.0/Array.html#method-i-sort
# https://www.toptal.com/developers/sorting-algorithms




# takes in an array of integers and returns a copy of the 
# array with the integers in ascending order
def sort_array_asc(array)
    array.sort do |a, b|
        a <=> b
    end
end

# returns array in descending order
def sort_array_desc(array)
    array.sort do |b, a|
        a <=> b
    end
end


# returns a copy of the array with the strings ordered in 
# ascending order by length. Remember that .sort takes a block in 
# which you can specify how you want your array sorted.
def sort_array_char_count(array)
    array.sort do |a, b|
        a.length <=> b.length
    end
end


# takes in an array and swaps the second and third elements. 
# Remember that array indices start at 0, so the second element has an 
# index of 1 and the third element has an index of 2
def swap_elements(array)
    array[1], array[2] = array[2], array[1]
    array
end


# returns a copy of the array with the elements in reverse orde
def reverse_array(array)
    array.reverse
    # array
end



# replaces the third character in each string with a 
# $ ("dollar sign")—Ke$ha style. Use the .each method to iterate 
# and build a new array to return at the end 
# of your method, just like we did in the "My Each" lab.
def kesha_maker(array)
    array.each do |item|
        item[2] = "$" # 3rd element has an index of 2 and set it equal to $
      end
end


# returns all the strings in the array passed to it that 
# start_with? (hint) the letter "a". You'll want to use a high 
# level iterator for this that 
# finds, selects, or detects elements based on a condition.
def find_a(array)
    array.select {|i| i.start_with?("a")}
end


# adds together all of the integers in the array and returns their sum
def sum_array(array)
    array.inject(0){|sum,x| sum + x } # 0 will be returned on an empty array 
end
#The basic of idea of inject is that you pass in what is frequently called the ‘memo’ — something that holds whatever you do to all the elements in the array or hash. This memo can be a number, like above, or it can itself be an array or hash. Then, you pass in a block where the first variable is the memo, the second is the element in the object.
# https://medium.com/@shirleyl/the-mystery-of-inject-in-ruby-d7fe6d6faed7



def add_s(array)
    #array.each_with_index.collect{|element, index| } # chain methods
    array.collect do |word| # collect outputs new array after iterations in code block
        if array[1] == word # second element in array stays the same
          word
        else
          word + "s"
        end
    end
end


# def add_s(array)
# array.each_with_index.collect{|element, index| element != element[2] element + "s" }
# end
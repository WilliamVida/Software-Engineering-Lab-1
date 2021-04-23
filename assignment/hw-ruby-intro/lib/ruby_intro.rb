# When done, submit this entire file to the autograder.

# Part 1

def sum arr
    # https://stackoverflow.com/questions/1538789/how-to-sum-array-of-numbers-in-ruby
    if arr.length != 0
        return arr.inject(0, :+)
    else
        return 0
    end
end

def max_2_sum arr
    # https://stackoverflow.com/questions/8544429/find-second-largest-number-from-an-array-in-ruby
    if arr.length == 1
        return arr[0]
    elsif arr.length > 1
        return arr.max + arr.sort[-2]
    else
        return 0
    end
end

def sum_to_n? arr, n
    # https://stackoverflow.com/a/28115592
    if arr.combination(2).any? { |a, b| a + b == n }
        return true
    else
        return false
    end
end

# Part 2

def hello(name)
    return "Hello, " + name
end

def starts_with_consonant? s
    # https://stackoverflow.com/questions/8258517/how-to-check-whether-a-string-contains-a-substring-in-ruby
    consonants = "bcdfghjklmnpqrstvwxyz"

    if s.length == 0
        return false
    elsif consonants.include? s[0].downcase
        return true
    else
        return false
    end
end

def binary_multiple_of_4? s
    # https://stackoverflow.com/a/32536221
    if (s.delete("01") == "") == false || s.length == 0
        return false
    end

    s = s.to_i(2)

    if s % 4 == 0
        return true
    end
end

# Part 3

class BookInStock
    attr_accessor :isbn, :price

    def initialize(isbn, price)
        if isbn.empty? || price <= 0.0
            raise ArgumentError
        end

        @isbn = isbn
        @price = price
    end

    def price_as_string
        return "$%.2f" % @price
    end
end

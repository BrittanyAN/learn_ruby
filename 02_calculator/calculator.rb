#write your code here
def add(a, b)
    a + b
end

def subtract(a, b)
    a - b
end

def sum(arr)
    result = 0
    arr.each do |item|
        result += item
    end
    result
end

def multiply(arr)
    result = 1
    arr.each do |item|
        result *= item
    end
    result
end

def power(a, b)
    a ** b
end

def factorial(a)
    result = 1
    if (a < 2)
        result
    else
        (2..a).each do |i|
            result *= i
        end
        result
    end
end
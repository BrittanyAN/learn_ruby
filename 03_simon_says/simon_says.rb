#write your code here
def echo(str)
    str
end

def shout(str)
    str.upcase
end

def repeat(str, n=2)
    result = str
    (2..n).each do
        result = result + " " + str
    end
    result
end

def start_of_word(str, n)
    str[0..n-1]
end

def first_word(str)
    str.split(" ")[0]
end

def titleize(str)
    if str.include?(" ")
        holder = str.split(" ")
        no_caps = ["and", "of", "in", "or", "the", "over", "to", "the", "a", "but"]
        holder[0] = holder[0].capitalize
        (0..holder.length-1).each do |index|
            if no_caps.include?(holder[index])
                holder[index] = holder[index]
            else
                holder[index] = holder[index].capitalize
            end
        end
        str = holder.join(" ")
        str
    else
        str.capitalize
    end
    
end
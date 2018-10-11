class Book
# write your code here
    def initialize
        @title = ""
    end

    def title
        return @title
    end

    def title=(title)
        if title.include?(" ")
            holder = title.split(" ")
            no_caps = ["and", "of", "in", "an", "or", "the", "over", "to", "the", "a", "but"]
            holder[0] = holder[0].capitalize
            (0..holder.length-1).each do |index|
                if no_caps.include?(holder[index])
                    holder[index] = holder[index]
                else
                    holder[index] = holder[index].capitalize
                end
            end
            title = holder.join(" ")
        else
            title = title.capitalize
        end
        @title = title
    end
end

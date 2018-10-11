#write your code here
def translate(str)

	str = str.gsub(/\s([aeiouy]\S*\w+)/i, " \\1ay");
	str = str.gsub(/^([aeiouy]\S*\w+)/i, "\\1ay");
	str = str.gsub(/\s([^aeiouy]*qu|[^aeiouy]+)([aeiouy]+\S*\w+|[aeiouy]+\w*)/i, " \\2\\1ay");
    str = str.gsub(/^([^aeiouy]*qu|[^aeiouy]+)([aeiouy]+\S*\w+|[aeiouy]+\w*)/i, "\\2\\1ay")
    str = str.gsub(/\w+[A-Z]ay/) {|word| word.capitalize()}

	str
end
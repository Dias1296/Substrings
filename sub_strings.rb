require 'pry-byebug'

def substrings(input_phrase, dictionary)
    substring_hash = Hash.new()
    dictionary.each { |dictionary_string|
        string_length = input_phrase.downcase.scan(dictionary_string.downcase).length
        if string_length > 0
                substring_hash[dictionary_string] = string_length
        end}
    puts substring_hash
end

substrings("This is a test", ["te", "2", "Test"])
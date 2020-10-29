# Your code goes here!
require 'pry'

class Anagram
    attr_accessor :word_to_test

    def initialize(word_to_test)
        self.word_to_test = word_to_test
    end


    def match(lots_of_words)
        new_array = []
        lots_of_words.each do |word|  
            if word.split("").sort != word_to_test.split("").sort 
                word.clear
            end
        end
        lots_of_words.reject {|e| e.to_s.empty?}
    end


    # def match(lots_of_words)
    #     new_array = []
    #     lots_of_words.each do |word|  
    #         word.split("").sort.each do |letters| 
    #             if letters != word_to_test.split("").sort 
    #                 letters.clear  
    #             end
    #         end
    #     end
    # end


    # def match(words)
    #     array = []
    #     words.each do |word|
    #         array << word.split("").sort
    #     end
    #     array.map do |letters| 
    #         if letters != word_to_test 
    #             letters.clear  
    #         end
    #     end 
    #     # if false delete, return array of only true words 
    # end




    # def match(words)
    #     words.map do |word| 
    #         word.split("").any? {|letter| letter == words ? words : [] }
    #     end
    # end

    # def match(words)
    #     words.map do |word| 
    #         word.split("").any? do |letter| 
    #             if letter == word 
    #                 return words
    #             else
    #                 return []
    #             end
    #         end
    #     end
    # end

end


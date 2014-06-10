class WordCloud
  def initialize(data)
    @data = data
  end

  def analyze
  #  "optimize" => { :count => 1, :people => ["Ila Huels"] }
    analyzed_data = {}

    @data.each do |person, quote_array|
      quote_array.each do |quote|
        quote_words = quote.split(' ')
          quote_words.each do |word|
            word = word.downcase

            if analyzed_data.has_key?(word)
              analyzed_data[word][:count] += 1
              if !analyzed_data[word][:people].include?(person)
                analyzed_data[word][:people] << person
              end
            else
              analyzed_data[word] = { :count => 1, :people => [person] }
            end
          end
      end
    end
    analyzed_data

  end
end
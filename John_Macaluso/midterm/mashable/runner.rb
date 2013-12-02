require_relative 'mashable_api'

def show_results_for(stories)
   puts "Search Results:"
      stories.each do |story|
      puts story
   end
end

puts "Search for something on mashable:"
query = gets.chomp

mashable = MashableSearchApi.new
mashable.search_for query

while mashable.empty?
   puts "Sorry there are no stories related to your search"
   puts "Please try again:"
   query = gets.chomp
   mashable.search_for query
   show_results_for mashable.stories
end

show_results_for mashable.stories

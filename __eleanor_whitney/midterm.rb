require 'pry'
require 'json'
require 'rest-client'

puts "Welcome to What's Up Esty?"
puts "See the latest listings of handmade items and find out more about them!"

results = RestClient.get("https://openapi.etsy.com/v2/listings/active?api_key=dogtabr1h3ovgi73ankuif74&limit=5&offset=0")
parsed = JSON.parse(results)
parsed["results"] 

array = parsed["results"]

index = 0 

array.each do |result|

	index=index+1

	title = result["title"]
	puts "-----"
	puts "Listing title : #{title}" 
	puts "Listing number: #{index}"
	puts "-----"
end	

#results_more_info = {"Listing_1" => parsed["results"][0], "Listing_2" => parsed["results"][1], "Listing_3" => parsed["results"][2], "Listing_4" => parsed["results"][3], "Listing_5" => parsed["results"][4]}

puts "Curious about a certain listing?"
puts "Enter the number of the listing to learn more:"

preference = gets

results = array[preference.to_i-1]

title = results["title"]	
description = results["description"]
shop_url = results["url"]

	puts "Listing title : #{title}" 
	puts "Description: #{description}"
	puts "Shop URL: #{shop_url}"

puts "Happy shopping handmade!"


binding.pry 


require 'open-uri' # includes the open-uri library
require 'nokogiri' # includes the nokogiri library
puts "Enter a site" # ask user for a site, remember there needs to be an http:// before the address!
url = gets.chomp # gets the input and stores it
if !url.include? "http://"
	url = "http://" + url
end
page = Nokogiri::HTML(open(url)) # gets the page source
content = page.css('p').collect{ |node| node.text }.join(" ")
# grabs all the <p> tags and puts them into one string

# puts page
puts page.css('p')
# puts page.css('p').collect{ |node| node.text } # return an Array
# puts page.css('p').collect{ |node| node.class }
# puts page.css('p').collect{ |node| node.text }.join(" ")
# puts page.css('p').length

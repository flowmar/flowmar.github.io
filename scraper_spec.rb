# Require mechanize library
require 'mechanize'

# Create a Scraper class
class Scraper

    # Creates a public instance variable. You can access these with @. 
    attr_accessor :root
    attr_accessor :agent
    
    # When the method 'initialize' is defined for a class, this method is called right after object creation.
    def initialize 
        @root ="http://web.archive.org/web/20030820233527/" +
        "http://bytravelers.com/journal/entry" # Initialize the variables. The root of the URL to the cached copy of the site is here. 
        @agent = Mechanize.new
    end

    def run
        100.times do |i| # Our method runs inside this block 100 times
            url = "#{@root}#{i}" # The block starts by generating a URL to the specific page, retrieves the page, and then prints out the index in our loop, plus the title of the page object.
            @agent.get( url ) do |page|
                puts "#{i} #{page.title}"
            end
        end
    end

end
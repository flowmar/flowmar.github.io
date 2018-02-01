require './scraper'

describe "#run" do
    it "should run" do
        scraper = Scraper.new
        scraper.run()
    end
end
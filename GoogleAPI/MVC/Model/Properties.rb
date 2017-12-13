class Properties
  def initialize(results)
    @results=results
  end
  def getTitles
    titles=[]
    @results.items.each do |item|
      titles.push(item.title)
    end
    return titles
  end
  def getLinks
    links=[]
    @results.items.each do |item|
      links.push(item.link)
    end
    return links
  end
end
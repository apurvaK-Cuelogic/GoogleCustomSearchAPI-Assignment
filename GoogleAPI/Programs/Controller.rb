require_relative 'GoogleAPI'
require_relative 'UserView'
userViewObj=UserView.new
keyword=userViewObj.dispUserView
googleAPIObj=GoogleAPI.new
googleAPIObj.hitServer(keyword)
titles=googleAPIObj.getTitles
titles.each do |title|
  puts title
end
links=googleAPIObj.getLinks
puts links

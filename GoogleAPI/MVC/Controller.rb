require_relative '../MVC/Model/API_Adapter'
require_relative '../MVC/Model/Properties'
require_relative '../MVC/Model/WhoIs'
require_relative '../MVC/Model/Logger'
require_relative '../config/initializers/google_cse_api'
puts "Enter the keyword you want to search on google"
keyword=gets.chomp
api=API.new

results=api.getData(keyword)

propObj=Properties.new(results)
titles=propObj.getTitles

links=propObj.getLinks

whoisObj=WhoIs.new
domainNames=whoisObj.getDomainName(links)
puts domainNames
created_dates=whoisObj.domainCreatedOn(domainNames)
puts created_dates
updated_dates=whoisObj.domainUpdateOn(domainNames)
puts updated_dates
domain_ids=whoisObj.domainRegistrationId(domainNames)

logObj=LogData.instance
logObj.log(domain_ids,created_dates,updated_dates,links)
for i in (0..links.length-1)
  puts "Title : ",titles[i]
  puts "Link : ",links[i]
end

require 'whois'
require 'whois-parser'
require_relative 'config/initializers/google_cse_api'

=begin
results = GoogleCustomSearchApi.search("poker", page: 10)
puts results.pages
puts results.current_page
puts results.next_page
puts results.previous_page
=end
#links=[]
results = GoogleCustomSearchApi.search("Virat Kohli")
puts results


=begin
obj=Whois.lookup("facebook.com")
parser=obj.parser
print parser.domain_id
=end
=begin
p=Whois.lookup("alfiemax.com")
parser=p.parser
print parser.created_on
=end



=begin
  def getInfo(domainNames,operation)

    info=[]
    whois = Whois::Client.new
    domainNames.each do |domainName|
      obj=whois.lookup(domainName)
      parser=obj.parser
      if operation=="updated_on"
        date=parser.updated_on
        info.push(date)
      elsif operation=="created_on"
        date=parser.created_on
        info.push(date)
      elsif operation=="domain_id"
        domainId=parser.domain_id
        info.push(domainId)
      end

    end
    return info
  end
=end
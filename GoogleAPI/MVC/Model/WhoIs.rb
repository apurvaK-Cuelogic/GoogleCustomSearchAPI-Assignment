require 'domainatrix'
require 'whois'
require 'whois-parser'

class WhoIs
  def getDomainName(links)
    domainNames=[]
    links.each do |link|
      url = Domainatrix.parse(link)
      d=url.public_suffix
      domainName=url.domain+"."+d
      domainNames.push(domainName)
    end
    return domainNames
  end

  def domainCreatedOn(url_array)
    output=[]
    old_url=nil
    r=nil
    w=Whois::Client.new
    url_array.each do |url|
      if url == old_url
        output.push(r)
      else
        parser=w.lookup(url).parser
        r=parser.created_on
        output.push(r)
        old_url=url
      end
    end
    return output
  end

  def domainRegistrationId(url_array)
    output=[]
    old_url=nil
    r=nil
    w=Whois::Client.new
    url_array.each do |url|
      if url == old_url
        output.push(r)
      else
        parser=w.lookup(url).parser
        r=parser.domain_id
        output.push(r)
        old_url=url
      end
    end

    return output
  end


  def domainUpdateOn(url_array)
    output=[]
    old_url=nil
    r=nil
    url_array.each do |url|
      if url == old_url
        output.push(r)
      else
        parser=Whois.lookup(url).parser
        r=parser.updated_on
        output.push(r)
        old_url=url
      end
    end
    return output
  end
end
=begin
require 'domainatrix'
url = Domainatrix.parse("http://www.pauldix.net")
url.url       # => "http://www.pauldix.net" (the original url)
url.public_suffix       # => "net"
url.domain    # => "pauldix"
url.canonical # => "net.pauldix"

url = Domainatrix.parse("http://google.com")
d=url.public_suffix       # => "co.uk"
puts url.domain+"."+d    # => "pauldix"
url.subdomain # => "foo.bar"
url.path      # => "/asdf.html?q=arg"
url.canonical #
url.canonical #
=end
class Logger
  def initialize
    @log = File.open("log.txt", "a")
  end



  def self.instance
    return @@instance
  end

  def log(msg)
    @log.puts(msg)
  end
  @@instance = Logger.new
  private_class_method :new
end

obj=Logger.instance
obj2=Logger.instance
puts obj.object_id
puts obj2.object_id

obj.log('message 1')
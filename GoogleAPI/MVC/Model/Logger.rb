
class LogData
  def initialize
    @log = File.open("log.txt", "a")
  end
  def self.instance
    return @@instance
  end
  def log(domain_id,created_date,updated_date,link)
    for i in (0..link.length-1)
      @log.puts(link[i])
      @log.puts(domain_id[i])
      @log.puts(created_date[i])
      @log.puts(updated_date[i])
    end

  end
  @@instance = LogData.new
  private_class_method :new
end


def log_errors
  File.open('errors.txt', 'a') do |file|
    (Thread.current[:errors] ||= []).each do |error|

      file.puts error
    end
  end
end
log_errors
require_relative 'GoogleAPI'
class UserView
  def dispUserView
    puts "Enter keyword you want to search on google"
    keyword=gets.chomp
    return keyword
  end
end
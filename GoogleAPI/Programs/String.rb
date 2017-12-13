
def split_word s
  aar=[]
  indices = (0...s.length).to_a
  aar.push(indices.product(indices).reject{|i,j| i > j}.map{|i,j| s[i..j]}.uniq)
  return aar
end
string=gets.chomp
substring=split_word(string)
substring.each do |s|
  if(s.reverse==s)
    puts "ahe"
  end

end
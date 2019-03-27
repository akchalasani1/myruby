words = Hash.new(0)

str = "The quick brown fox jumped over the lazy fox over"

cake = str.downcase.split(" ")

  for k in cake do

    words[k] += 1

  end

 words.each_pair {|k, v| puts "Key: #{k}, Value: #{v}" if v > 1}


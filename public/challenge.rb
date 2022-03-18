def search_diamond
  str = '<<.<<..>><>><.>.>.<<.>.<.>>>><>><>>'
  diamonds = str.gsub('.', '')
  diamond = 0

  loop do
    scan_diamond = diamonds.scan('<>').length
    puts 'Looking for diamonds '
    sleep 1
    break if scan_diamond == 0

    diamond += scan_diamond
    diamonds.gsub!('<>', '')
  end
  diamond
end

puts "There are '#{search_diamond}' diamonds!"

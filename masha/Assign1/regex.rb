line0 = gets
if line0 =~ /Perl|Python/
  puts "Scripting language mentioned: #{line0}"
end

line1 = gets
newline = line1.sub(/Perl/, 'Ruby') # replace first 'Perl' with 'Ruby'
newerline = newline.gsub(/Python/, 'Ruby') # replace every 'Python' with 'Ruby'
puts "The final line is #{newerline}"
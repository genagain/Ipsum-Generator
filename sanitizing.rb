require 'pry'

input_file = File.open('unsanitized_hamlet.txt')
input = input_file.read
output = ""
regexes = Regexp.union([ /[\[].+[\]]/, /[A-Z].{2,4}\./, /^ACT/, /^Scene.+$/ ])
input.each_line do |line|
  if regexes.match(line)
    next
  else
    output.concat(line)
  end
end
output.gsub!("\r\n",' ')
File.open('sanitized_hamlet.txt', 'w') do |file|
  file.write(output)
end

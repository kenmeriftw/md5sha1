require 'digest'

print 'Введите слово или фразу для шифрования: '
string = gets.chomp

puts 'Каким образом Вы хотите зашифровать фразу?'
puts '1. MD5'
puts '2. SHA1'

choice = gets.chomp

result_string = ''
case choice
when '1' then result_string = Digest::MD5.hexdigest(string)
when '2' then result_string = Digest::SHA1.hexdigest(string)
else puts 'Вы ввели некорректное значение.'
end

puts "Вот что получилось: #{result_string}"

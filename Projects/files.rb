print "What's the name of the file you want to copy? "
filename = gets.chomp

file_content = open(filename).read

print "Where do you want to copy it to? "
new_filename = gets.chomp

new_file = open(new_filename, 'w')

new_file.write(file_content)

new_file.close
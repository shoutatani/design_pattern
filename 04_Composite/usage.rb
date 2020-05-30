require './file'
require './folder'

# top_level
file1 = MyFile.new('file1.csv')
file1.describe
puts ''

# 2nd_level
folder1 = MyFolder.new('folder1')
file2 = MyFile.new('file2.csv')
folder1.add(file2)
folder1.describe
file2.describe
puts ''

# 3rd_level
folder2 = MyFolder.new('folder2')
file3 = MyFile.new('file3.csv')
file4 = MyFile.new('file4.csv')
folder2.add(file3)
folder2.add(file4)
folder2.describe
file3.describe
file4.describe
puts ''

folder1.add(folder2)
folder1.describe
folder2.describe

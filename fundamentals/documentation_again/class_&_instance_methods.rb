#File::path is a class method and, therefore, should be called when using a class. 
#However, File#path is a instance method and should be called by an object.

# File#Path, when called as '.path'  with an object, returns the pathname 
# used to create the file as a string. However, File::path,
# when called with as '.path' with a class, will return a string representation
# of the file's path in the directory. 




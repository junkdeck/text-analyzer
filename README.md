# text-analyzer
Ruby text statistics.

text1.rb is a class that doesn't do much on it's own. You need to supply it a file opened with File#read,
so it's extremely unsuitable for large files, as they'll be loaded into memory all at once.

text2.rb is a standalone imperatively written program, which uses File#open instead.

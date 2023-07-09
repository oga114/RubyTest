require "readline"
require 'fileutils'
require './GetDirItemList'

get = GetDirItemList.new

dirPath = "./"+$input

i = 0
Dir.foreach(dirPath) do |f|
    next if f == '.' or f == '..'
    File.rename("#{dirPath}/#{f}", "#{dirPath}/ちんこ#{i}")
    i += 1
end
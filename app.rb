require "readline"
require 'fileutils'
require './GetDirItemList'

loop do
    $input = Readline.readline("フォルダ名をここに入力！！:").to_s

    get = GetDirItemList.new
    dirPath = '.'

    res = []
    get.GetDirFilesList(dirPath).each do |itemList|
    res.push(itemList)
    end

    if (res.include?($input))
        load "./fileRename.rb"
        break
    else
        puts "そんなフォルダここには存在しないよ"
    end
end
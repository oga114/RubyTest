class GetDirItemList
  #指定したディレクトリのファイル一覧を返す
  #@param string dirPath
  #@return array
  def GetDirFilesList(dirPath)
    items = []
    Dir.foreach(dirPath) do |item|
      next if item == '.' or item == '..'
      items.push(item)
    end
    return items
  end
end
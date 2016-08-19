class TodoList
  
  def initialize(list)
    @orig_list = list
    @list = list
  end

  def add_item(item)
    @list << item
  end

  def get_items
    @orig_list
  end

  def delete_item(item)
    @list.delete(item)
  end

  def get_item(idx)
    @list[idx]
  end
end
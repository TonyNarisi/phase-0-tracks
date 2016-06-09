class TodoList

  def initialize(items)
    @items = items
  end

  def get_items
    @items
  end

  def add_item(new_item)
    @items << new_item
  end

  def delete_item(another_item)
    @items.delete(another_item)
    @items
  end

  def get_item(index)
    @items[index]
  end

end
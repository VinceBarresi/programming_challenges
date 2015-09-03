class LinkedList
  def initialize val
    # init a new node at the head
    @head = ListNode.new(val, nil)
  end
    
  def add value
    # traverse the list and add a new node with passed in value
    current = @head
    while current.next_node != nil
      current = current.next_node
    end 
    current.next_node = ListNode.new(value, nil)
    self    
  end

  def delete val
    current = @head
    if current.value == val
      # update head if its to be deleted
      @head = @head.next_node
    else
    # ... x -> y -> z
    #   ... x->z
    # need to link x -> z if y is deleted..
    current = @head
    while (current != nil) && (current.next_node != nil) && ((current.next_node).value != val)
      current = current.next_node
      end 
      if (current != nil) && (current.next_node != nil)
        current.next_node = (current.next_node).next_node
      end
    end
  end
    
  def delete_rand_kth list
    # add method to get list and generate random based on size!
    # ***
    x = rand(10)
    puts 'removing ' + x.to_s + 'kth element from LinkedList'
    i = 1
    current = @head
    until i == x - 1 && current.next_node != nil 
      current = current.next_node
      i += 1
    end
    current.next_node = (current.next_node).next_node
  end

  def delete_kth kth, list
    x = kth
    puts 'removing ' + x.to_s + 'kth element from LinkedList'
    i = 1
    current = @head
    until i == x - 1 && current.next_node != nil 
      current = current.next_node
      i += 1
    end
    current.next_node = (current.next_node).next_node
    end
    
  def display
    current = @head
    full_list = [] 
    while current.next_node != nil 
      full_list += [current.value.to_s]
      current = current.next_node
    end
    full_list += [current.value.to_s]
    full_list.join('->')
  end

  def join_list list 
    i = 1
    while i <= list.size - 1
      if i % 2 == 0
        list.insert(i, '->')
      end
      i += 1
    end
    list.join
  end

  def list_to_int
    current = @head
    full_list = [] 
    while current.next_node != nil 
      full_list += [current.value.to_s]
      current = current.next_node
    end
    full_list += [current.value.to_s]
    full_list.join('').to_i
  end

  def list_to_str
    current = @head
    full_list = [] 
    while current.next_node != nil 
      full_list += [current.value.to_s]
      current = current.next_node
    end
    full_list += [current.value.to_s]
    full_list.join()
  end

  def display_reverse_list
    current = @head
    full_list = []
    while current.next_node != nil 
      full_list += [current.value.to_s]
      current = current.next_node
    end
    full_list += [current.value.to_s]
    full_list.reverse.join('->')
  end

  def is_palindrome?
    current = @head
    full_list = []
    while current.next_node != nil
      full_list += [current.value.to_s]
      current = current.next_node
    end
    full_list += [current.value.to_s]
    full_list == full_list.reverse ? true : false
  end

  def list_reverse_to_int
    current = @head
    full_list = [] 
    while current.next_node != nil 
      full_list += [current.value.to_s]
      current = current.next_node
    end
    full_list += [current.value.to_s]
    full_list.reverse.join('').to_i
  end

  def list_reverse_to_str
    current = @head
    full_list = [] 
    while current.next_node != nil 
      full_list += [current.value.to_s]
      current = current.next_node
    end
    full_list += [current.value.to_s]
    full_list.reverse.join()
  end

  def list_to_arr
    current = @head
    full_list = []
    while current.next_node != nil
      full_list += [current.value.to_s]
      current = current.next_node
    end
    full_list += [current.value.to_s]
    full_list
  end

  def list_to_reverse_arr
    current = @head
    full_list = []
    while current.next_node != nil
      full_list += [current.value.to_s]
      current = current.next_node
    end
    full_list += [current.value.to_s]
    full_list.reverse
  end
end

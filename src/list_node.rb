class ListNode
  attr_accessor :value, :next_node
  
  def initialize val, next_in_line
    @value = val
    @next_nodex = next_in_line
    if val != nil
      puts 'Initialized a Node with value:  ' + value.to_s 
    end
  end
end

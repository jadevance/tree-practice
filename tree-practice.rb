class TreeNode
  attr_accessor :value, :left, :right, :operator
   def initialize(val)
     @value = val
     @left = nil
     @right = nil
     @operator = operator
   end
end

# evaluates left middle right
def print_infix(node)
  return if node == nil
  print_infix(node.left)
  print node.value + " "
  print_infix(node.right)
end

# evaluates middle left right
def print_prefix(node)
  return if node == nil
  print node.value + " "
  print_prefix(node.left)
  print_prefix(node.right)
end

# evaluates left right middle
def print_postfix(node)
  return if node == nil
  print_postfix(node.left)
  print_postfix(node.right)
  print node.value + " "
end

def print_operators(node)
  return if node == nil
  print_operators(node.left)
  if node.left != nil || node.right != nil
    print node.value + " "
  end 
  print_operators(node.right)
end

def print_non_operators(node)
  return if node == nil
  print_non_operators(node.left)
  if node.left == nil || node.right == nil
    print node.value + " "
  end 
  print_non_operators(node.right)
end 

def find_operators(node, operator)
  return if node == nil
  count = 0 
  find_operators(node.left)
  #  search the whole tree and count up the operators
  if node.value == operator
    count += 1
  end
  find_operators(node.right)
end 

# root = TreeNode.new("+")
# root.left = TreeNode.new("3")
# root.right = TreeNode.new("2")
# puts print_infix(root)

# root = TreeNode.new("-")
# root.left = TreeNode.new("+")
# root.right = TreeNode.new("10")
# root.left.left = TreeNode.new("3")
# root.left.right = TreeNode.new("2")

# root = TreeNode.new("+")
# root.left = TreeNode.new("*")
# root.right = TreeNode.new("2")
# root.left.left = TreeNode.new("4")
# root.left.right = TreeNode.new("3")
# puts print_infix(root)

root = TreeNode.new("-")
root.left = TreeNode.new("+")
root.right = TreeNode.new("%")
root.right.left = TreeNode.new("10")
root.right.right = TreeNode.new("5")
root.left.left = TreeNode.new("*")
root.left.right = TreeNode.new("2")
root.left.left.left = TreeNode.new("4")
root.left.left.right = TreeNode.new("3")







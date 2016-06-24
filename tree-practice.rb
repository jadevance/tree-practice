class TreeNode
   attr_accessor :value, :left, :right

   def initialize(val)
     @value = val
     @left = nil
     @right = nil
   end
end

# recusrive 
def print_infix(node)
  return if node == nil
  print_infix(node.left)
  print node.value + " "
  print_infix(node.right)
end

def operators(node)
  return if node == nil
  operators(node.left)
  if node.left != nil || node.right != nil
    print node.value + " "
  end 
  operators(node.right)
end



root = TreeNode.new("+")
root.left = TreeNode.new("3")
root.right = TreeNode.new("2")
puts print_infix(root)

root = TreeNode.new("-")
root.left = TreeNode.new("+")
root.right = TreeNode.new("10")
root.left.left = TreeNode.new("3")
root.left.right = TreeNode.new("2")
puts print_infix(root)

root = TreeNode.new("+")
root.left = TreeNode.new("*")
root.right = TreeNode.new("2")
root.left.left = TreeNode.new("4")
root.left.right = TreeNode.new("3")
puts print_infix(root)

root = TreeNode.new("-")
root.left = TreeNode.new("+")
root.right = TreeNode.new("%")
root.right.left = TreeNode.new("10")
root.right.right = TreeNode.new("5")
root.left.left = TreeNode.new("*")
root.left.right = TreeNode.new("2")
root.left.left.left = TreeNode.new("4")
root.left.left.right = TreeNode.new("3")
puts print_infix(root)

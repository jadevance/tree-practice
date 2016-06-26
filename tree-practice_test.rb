gem 'minitest', '>= 5.0.0'
require 'minitest/pride'
require 'minitest/autorun'
require_relative 'tree-practice'


class TreeTest < Minitest::Test
    @expression = TreeNode.new("-")
    @expression.left = TreeNode.new("+")
    @expression.right = TreeNode.new("%")
    @expression.right.left = TreeNode.new("10")
    @expression.right.right = TreeNode.new("5")
    @expression.left.left = TreeNode.new("*")
    @expression.left.right = TreeNode.new("2")
    @expression.left.left.left = TreeNode.new("4")
    @expression.left.left.right = TreeNode.new("3")

  def test_infix_notation
    assert_equal print_infix(@expression) "4 * 3 + 2 - 10 % 5"
  end 

  def test_postfix_notation
    assert_equal print_postfix(@expression), '4 3 * 2 + 10 5 % -'
  end
  
  def test_prefix_notation
    assert_equal print_prefix(@expression), '- + * 4 3 2 % 10 5'
  end 

  def test_print_operators
    assert_equal print_operators(@expression), '* + - %'
  end

  def test_print_nonoperators
    assert_equal print_non_operators(@expression), '4 3 2 10 5'
  end
end 

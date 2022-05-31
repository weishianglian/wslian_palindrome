# frozen_string_literal: true

require_relative "wslian_palindrome/version"

# module WslianPalindrome
#   class Error < StandardError; end
#   # Your code goes here...
# end

class String
  def palindrome?
    processed_content == processed_content.reverse
  end

  def processed_content
    downcase.letters
  end

  def letters
    scan(/[a-z]/i).join
  end
end
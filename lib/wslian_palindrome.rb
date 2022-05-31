# frozen_string_literal: true

require_relative "wslian_palindrome/version"

module WslianPalindrome
  def palindrome?
    processed_content == processed_content.reverse
  end

  def processed_content
    to_s.downcase.letters
  end

  def letters
    scan(/[1-9a-z]/i).join
  end
end

class String
  include WslianPalindrome
end

class Integer
  include WslianPalindrome
end
require 'minitest/autorun'
require_relative './tla'

class TLAConverterTest < Minitest::Test

  def setup
    @tlaconvert = TLAConverter.new
    @clip = Clipboard.new
  end

  def test_ABC
    assert_equal '8065666700', @tlaconvert.convert("ABC", false, @clip), "Should convert ABC -> 8065666700"
  end

  def test_code
    assert_equal 'ABC', @tlaconvert.convert("8065666700", false, @clip), "Should convert 8065666700 -> ABC"
  end

end

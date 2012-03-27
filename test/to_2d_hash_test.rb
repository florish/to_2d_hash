require 'test/unit'
require 'hash/to_2d_hash'
class TestTo2dHash < Test::Unit::TestCase

  def test_default_conversion
    input = {
      "k1" => "v1",
      "k2" => {
        "k21" => "v21",
        "k22" => "v22",
        "k23" => {
          "k231" => "v231"
        }
      }
    }
    test = {
      "k1" => "v1",
      "k2_k21" => "v21",
      "k2_k22" => "v22",
      "k2_k23_k231" => "v231"
    }
    
    assert_equal test, input.to_2d_hash
  end
  
  def test_custom_delimiter
    input = {
      "k1" => {
        "k11" => "v11"
      }
    }
    
    test = {
      "k1:k11" => "v11"
    }
    
    assert_equal test, input.to_2d_hash(delimiter: ':')
    
  end
end
# Test for facets/string/stackable

require 'facets/string/stackable.rb'

require 'test/unit'

class TestStringAccess < Test::Unit::TestCase

  def test_pop_01
    s =  "012345"
    assert_raises( ArgumentError ) { s.pop(1) }
  end

  def test_pop_02
    s =  "012345"
    assert_equal( "5", s.pop )
    assert_equal( "01234", s )
    assert_equal( "4", s.pop )
    assert_equal( "0123", s )
    assert_equal( "3", s.pop )
    assert_equal( "012", s )
    assert_equal( "2", s.pop )
    assert_equal( "01", s )
    assert_equal( "1", s.pop )
    assert_equal( "0", s )
    assert_equal( "0", s.pop )
    assert_equal( "", s )
    assert_equal( "", s.pop )
    assert_equal( "", s )
  end

  def test_push_01
    s = ""
    #assert_raises( ArgumentError ) { s.push }
    assert_raises( ArgumentError ) { s.push(1,2) }
  end

  def test_push_02
    s = ""
    assert_equal( "0", s.push("0") )
    assert_equal( "01", s.push("1") )
    assert_equal( "012", s.push("2") )
    assert_equal( "0123", s.push("3") )
    assert_equal( "01234", s.push("4") )
    assert_equal( "012345", s.push("5") )
  end

  def test_poke_01
    a = ""
    assert_raises( ArgumentError ) { a.poke(1,2) }
  end

  def test_poke_02
    s = ""
    assert_equal( "0", s.poke("0") )
    assert_equal( "10", s.poke("1") )
    assert_equal( "210", s.poke("2") )
    assert_equal( "3210", s.poke("3") )
    assert_equal( "43210", s.poke("4") )
    assert_equal( "543210", s.poke("5") )
  end

  def test_shift_01
    s = "012345"
    assert_raises( ArgumentError ) { s.shift(1) }
  end

  def test_shift_02
    s = "012345"
    assert_equal( "12345", s.shift )
    assert_equal( "2345", s.shift )
    assert_equal( "345", s.shift )
    assert_equal( "45", s.shift )
    assert_equal( "5", s.shift )
    assert_equal( "", s.shift )
    assert_equal( "", s.shift )
  end

  def test_unshift_01
    s = ""
    assert_raises( ArgumentError ) { s.unshift(1,2) }
  end

  def test_unshift_02
    s = ""
    assert_equal( "0", s.unshift("0") )
    assert_equal( "10", s.unshift("1") )
    assert_equal( "210", s.unshift("2") )
    assert_equal( "3210", s.unshift("3") )
    assert_equal( "43210", s.unshift("4") )
    assert_equal( "543210", s.unshift("5") )
  end

end

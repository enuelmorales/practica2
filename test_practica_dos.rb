require_relative 'practica_dos.rb'
require 'test/unit'

class TestPracticaDos < Test::Unit::TestCase
  def test_sum_all_multiples_3_5
    practica_dos = PracticaDos.new
    assert_equal(0, practica_dos.sum_all_multiples_3_5(0))
    assert_equal(33165, practica_dos.sum_all_multiples_3_5(999))
  end
  def test_sum_all_even_terms
    practica_dos = PracticaDos.new
    assert_equal(0, practica_dos.sum_all_even_terms(0))
    assert_equal(15999984000003, practica_dos.sum_all_even_terms(3999999))
  end
  def test_palindrome_largest_mutiplicate_digit
    practica_dos = PracticaDos.new
    assert_equal(906609, practica_dos.palindrome_largest_mutiplicate_digit)
  end
  def test_smalles_number_divisible_by
    practica_dos = PracticaDos.new
    assert_equal(0, practica_dos.smalles_number_divisible_by(0))
  end
end



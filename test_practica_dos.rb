require_relative 'practica_dos.rb'
require 'test/unit'

class TestPracticaDos < Test::Unit::TestCase
  def setup
    @practica_dos = PracticaDos.new
  end
  def test_sum_all_multiples_3_5
    assert_equal(0, @practica_dos.sum_all_multiples_3_5(0))
    assert_equal(33165, @practica_dos.sum_all_multiples_3_5(999))
  end
  def test_sum_all_even_terms
    assert_equal(0, @practica_dos.sum_all_even_terms(0))
    assert_equal(15999984000003, @practica_dos.sum_all_even_terms(3999999))
  end
  def test_palindrome_largest_mutiplicate_digit
    assert_equal(906609, @practica_dos.palindrome_largest_mutiplicate_digit)
  end
  def test_smalles_number_divisible_by
    practica_dos = PracticaDos.new
    assert_equal(0, @practica_dos.smalles_number_divisible_by(0))
  end
  def test_difference_between_square_sum_and_sum_squares
    assert_equal(0, @practica_dos.difference_between_square_sum_and_sum_squares(0))
    assert_equal(2640, @practica_dos.difference_between_square_sum_and_sum_squares(10))
    assert_equal(25164150, @practica_dos.difference_between_square_sum_and_sum_squares(100))
  end
  def test_get_cousin_number_pos
    assert_equal(13, @practica_dos.get_cousin_number_pos(6))
    assert_equal(104743, @practica_dos.get_cousin_number_pos(10001))
  end
  def test_sum_cousin_less_than
    assert_equal(17, @practica_dos.sum_cousin_less_than(10))
    #assert_equal(?, @practica_dos.sum_cousin_less_than(2000000))
  end
  def test_length_words_string
    assert_equal([], @practica_dos.length_words_string(''))
    assert_equal([4, 2, 2, 7], @practica_dos.length_words_string('Este es un ejemplo'))
  end
  def test_rgb_integer_representation(num)
    assert_equal(0, @practica_dos.rgb_integer_representation({ red: 0, green: 0, blue: 0 }))
    assert_equal(16744448, @practica_dos.rgb_integer_representation({ red: 0, green: 128, blue: 255 }))
  end
  def test_rgb_coefficient_representation(num)
    assert_equal(0, @practica_dos.rgb_coefficient_representation({ red: 0, green: 0, blue: 0 }))
    assert_equal(4261511169, @practica_dos.rgb_coefficient_representation({ red: 0, green: 128, blue: 255 }))
  end
  def test_list_contacts
    assert_equal([] ,@practica_dos.list_contacts)
  end
  def test_add_contact
    cant_contacts = @practica_dos.get_contacts.size
    new_contact = {
        name: 'Enuel',
        birthday_date: '03/05/1989',
        email: 'enuelmorales89@gmail.com',
        phone: 486458,
        address: '45 nº 546'
    }
    @practica_dos.add_contact(new_contact)
    assert_not_equal(cant_contacts ,@practica_dos.get_contacts.size)
  end
  def test_edit_contact
    cant_contacts = @practica_dos.get_contacts.size
    new_contact = {
        name: 'Manuel',
        birthday_date: '13/05/1989',
        email: 'manuel89@gmail.com',
        phone: 457051,
        address: '56 nº 1240'
    }
    @practica_dos.edit_contact(new_contact)
    assert_equal(cant_contacts ,@practica_dos.get_contacts.size)
  end
  def test_search_contact
    contact = {
        name: 'Manuel',
        birthday_date: '13/05/1989',
        email: 'manuel89@gmail.com',
        phone: 457051,
        address: '56 nº 1240'
    }
    @practica_dos.add_contact(contact)
    assert_equal(contact ,@practica_dos.search_contact(contact))
  end
  def test_convert_meters_to_feets
    assert_equal(32.808 ,@practica_dos.convert_meters_to_feets(10))
  end
  def test_convert_feets_to_meters
    assert_equal(3.0480370641306997 ,@practica_dos.convert_feets_to_meters(10))
  end
  def test_create_file
    assert_not_equal(0, @practica_dos.create_file)
  end
end



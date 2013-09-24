class PracticaDos
  def initialize
    #puts self.sum_all_multiples_3_5(999)
    #puts self.sum_all_even_terms(3999999)
    #puts self.palindrome_largest_mutiplicate_digit()
    #puts self.smalles_number_divisible_by(20)
    #puts self.difference_between_square_sum_and_sum_squares(100)
    #puts self.get_cousin_number_pos(10001)
    #puts self.sum_cousin_less_than(2000000)
    #puts self.length_words_string("Este es un ejemplo")
    #puts self.rgb_integer_representation({ red: 0, green: 128, blue: 255 })
    #puts self.rgb_coefficient_representation({ red: 0, green: 128, blue: 255 })
    @contacts = []
    #new_contact = {
    #    name: 'Enuel',
    #    birthday_date: '03/05/1989',
    #    email: 'enuelmorales89@gmail.com',
    #    phone: 486458,
    #    address: '45 nº 546'
    #}
    #self.add_contact(new_contact)
    #puts self.list_contacts
    #other_contact = {
    #    name: 'Pedro',
    #    birthday_date: '03/05/1989',
    #    email: 'enuelmorales89@gmail.com',
    #    phone: 486458,
    #    address: '45 nº 546'
    #}
    #self.edit_contact(other_contact)
    #puts self.list_contacts
    #nothing_contact = {
    #    name: 'Juan',
    #    birthday_date: '03/05/1989',
    #    email: 'juan@gmail.com',
    #    phone: 486458,
    #    address: '45 nº 546'
    #}
    #puts self.search_contact(nothing_contact)
    #puts self.convert_meters_to_feets(10)
    #puts self.convert_feets_to_meters(10)
    puts self.create_file
  end

  def sum_all_multiples_3_5(limit_range)
    (0..limit_range).inject {|sum, element| sum + self.is_multiple_3_5?(element)}
  end
  def is_multiple_3_5?(element)
    ((element % 3 == 0) && (element % 5 == 0))? element : 0
  end

  def sum_all_even_terms(limit)
    (0..limit).inject {|sum, element| sum + sum_terms_par(element)}
  end
  def sum_terms_par(element)
    (element<2 && is_par?(element))? element : (element-1)+(element-2)
  end
  def is_par?(element)
    element%2 == 0
  end

  def palindrome_largest_mutiplicate_digit()
    (100..999).to_a.combination(2).select{|a,b| self.is_palindrome?(a*b)}.map{|a,b| a*b}.max
  end
  def is_palindrome?(num)
    num.to_s==num.to_s.reverse
  end

  def smalles_number_divisible_by(num)
    if (self.is_divisible_by_all_numbers(num))
      num
    else
      num = num+1
      self.smalles_number_divisible_by(num)
    end
  end
  def is_divisible_by_all_numbers(num)
    i = 2
    ok = true
    19.times {
      if ((num%i) != 0)
        ok = false
        break
      end
      i=i+1
    }
    ok
  end

  def difference_between_square_sum_and_sum_squares(num)
    self.square_sum(num) - self.sum_squares(num)
  end
  def square_sum(num)
    (0..num).inject { |sum, element| sum+element }**2
  end
  def sum_squares(num)
    (0..num).inject { |sum, element| sum+element**2 }
  end

  def get_cousin_number_pos(num)
    require 'mathn'
    pos = 0
    i = 0
    primes = Prime::instance
    primes.each do |prime|
      pos = prime
      i = i+1
      break if i == num
    end
    pos
  end

  def sum_cousin_less_than(num)
    require 'mathn'
    sum = 0
    primes = Prime::instance
    primes.each do |prime|
      break if prime > num
      sum = sum+prime
    end
    sum
  end

  def length_words_string(string)
    result = []
    string.downcase.scan(/[\w']+/).each do |item|
      result << item.length
    end
    result
  end

  def rgb_integer_representation(hash_rgb)
    r = hash_rgb[:red]
    g = hash_rgb[:green]*256
    b = hash_rgb[:blue]*256**2
    r+g+b
  end
  def rgb_coefficient_representation(hash_rgb)
    r = hash_rgb[:red]**0
    g = hash_rgb[:green]**1
    b = hash_rgb[:blue]**2
    hash_rgb = {red: r, green: g, blue: b}
    self.rgb_integer_representation(hash_rgb)
  end

  def list_contacts
    @contacts.each do |contact|
      p contact[:name], contact[:birthday_date], contact[:email], contact[:phone], contact[:address]
    end
  end
  def add_contact(contact)
    @contacts << contact
  end
  def edit_contact(contact)
    @contacts.each_with_index do |element, index|
      if contact[:email] == element[:email]
        @contacts[index] = contact
      end
    end
  end
  def search_contact(contact)
    result = nil
    @contacts.each do |element|
      result = (contact[:email] == element[:email])? contact : 'No se encuentra'
      break
    end
    result
  end
  def get_contacts
    @contacts
  end

  def convert_meters_to_feets(num_meter)
    num_meter * 3.2808
  end
  def convert_feets_to_meters(num_feet)
    num_feet / 3.2808
  end

  def create_file
    lines = [
      ['001','Caja de sorpresas',52.50],
      ['002','Viaje de ida al infinito y mas allá',120],
      ['003','Historias de chillar',75],
      ['003','Pegamento de personas',80]
    ]
    f = File.open('ejercicio_12.txt', 'w') do |f|
      lines.each do |line|
        f.puts line.join(', ')
      end
    end
    f.size
  end
end

practica_dos = PracticaDos.new
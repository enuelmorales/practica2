class PracticaDos
  def initialize
    #puts self.sum_all_multiples_3_5(999)
    #puts self.sum_all_even_terms(3999999)
    #puts self.palindrome_largest_mutiplicate_digit()
    #puts self.smalles_number_divisible_by(20)
    #puts self.difference_between_square_sum_and_sum_squares(100)
    #puts self.get_cousin_number_pos(10001)
    #puts self.sum_cousin_less_than(2000000)
    puts self.length_words_string("Este es un ejemplo")
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
    if (self.is_divisible_by_all_numbers(num) == true)
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

end

practica_dos = PracticaDos.new
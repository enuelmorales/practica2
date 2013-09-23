class PracticaDos
  def initialize
    #puts self.sum_all_multiples_3_5(999)
    #puts self.sum_all_even_terms(3999999)
    #puts self.palindrome_largest_mutiplicate_digit()
    puts self.smalles_number_divisible_by(20)
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
end

practica_dos = PracticaDos.new
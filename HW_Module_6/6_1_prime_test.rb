# Програма для перевірки, чи дане число є простим.
# використовується решето Ерастрофена з оптимізацією
# Оптимізація полягає в початку висіювання наступного
# не викресленого числа з його квадрату.

# Ви маєте зреалізувати логіку для формування масиву-шерета,
# його просіювання та виведення інформації, чи вказане число є простим.

class Calculator
  attr_accessor :sieve

  
  def setup_prime n
    @sieve = (0..n).to_a
    @sieve[0] = nil
    @sieve[1] = nil
  end

 
  def sieve_prime_upto n
    @sieve.each do |p|
    next unless p

    
    break if p*p > n.to_i

    (p*p).step(n.to_i ,p) { |j| @sieve[j] = nil }
  end

    
    @sieve.compact
  end

  
  def sieve_prime? n
    setup_prime n
    sieve_prime_upto n
    sieve_prime_upto(n).include?(n)
  end
end
input = gets.chomp.to_i
puts Calculator.new.sieve_prime?(input)
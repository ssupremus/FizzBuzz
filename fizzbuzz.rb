class FizzBuzz
  attr_accessor :n, :hsh, :str
  def initialize(n = 0, hsh = { 3 => "Fizz", 5 => "Buzz", 7 => "Quux" })
    @n = n
    @hsh = hsh
    @str = ""
    calc
  end

  def toString
    print @str
  end

  private
  def calc
    (1..@n).each do |x|
      @str += x.to_s + " "
      tmp = @str.length
      @hsh.each do |k, v|
        @str += v if x % k == 0
      end
      @str.chop! if @str.length == tmp
      @str += "\n"
    end
  end
end

p = FizzBuzz.new(20)
p.toString

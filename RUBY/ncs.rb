# ncs.rb
module BaseConverter
  def self.val(c)
    if c >= '0' && c <= '9'
      c.to_i
    else
      c.upcase.ord - 'A'.ord + 10
    end
  end

  def self.to_deci(str, base)
    len = str.length
    power = 1
    num = 0
    (len - 1).downto(0) do |i|
      char_val = val(str[i])
      if char_val >= base
        puts "Invalid Number"
        return -1
      end
      num += char_val * power
      power = power * base
    end
    num
  end

  def self.re_val(num)
    if num >= 0 && num <= 9
      (num + '0'.ord).chr
    else
      (num - 10 + 'A'.ord).chr
    end
  end

  def self.from_deci(base, input_num)
    res = ""
    return "0" if input_num == 0

    while input_num > 0
      res += re_val(input_num % base)
      input_num /= base
    end
    res.reverse
  end

  def self.convert_base(s, a, b)
    num = to_deci(s, a)
    return if num == -1
    ans = from_deci(b, num)
    puts "ANSWER: #{ans}"
  end
end

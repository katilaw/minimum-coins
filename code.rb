class Coins
  def minimum_coins(num)
    unless num.between?(1,250)
      print "Please select a number between 1 and 250!"
    else
      original_value = num
      arr = []

      while num > 0
        if num >= 100
          num - 100
          arr << 100
          num = num - 100
        elsif num >= 50
          num >= 50
          num - 50
          arr << 50
          num = num - 50
        elsif num>= 25
          num >= 25
          num - 25
          arr << 25
          num = num - 25
        elsif num >= 10
          num >= 10
          num - 10
          arr << 10
          num = num - 10
        elsif num >= 5
          num >= 5
          num - 5
          arr << 5
          num = num - 5
        else
          num - 1
          arr << 1
          num = num - 1
        end
      end

      arr.sort!
      if arr.length == 2
        puts "The minimum number of coins to generate '#{original_value}' would be #{arr.length}: #{arr.first} and #{arr.last}."
      else
        puts "The minimum number of coins to generate '#{original_value}' would be #{arr.length}: #{arr.join(', ')}."
      end
    end
  end
end

test = Coins.new.minimum_coins(35)
test = Coins.new.minimum_coins(37)
test = Coins.new.minimum_coins(101)

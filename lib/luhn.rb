module Luhn

  def self.is_valid?(number)
    puts number
    #reverse input number
    revcc = number.to_s.reverse
    puts revcc
    #create array fom reversed number
    arry_revcc = revcc.split('').map { |digit| digit.to_i }
    #loop through backwards every other digit
    cc_sum = 0
    arry_revcc.length.times do |n|
      #check if odd - starts at zero
      if n.odd?
        #double digit 
        puts 'n - arry_revcc - doubled'
        puts arry_revcc[n]
        arry_revcc[n] = arry_revcc[n] * 2
        #if value >= 10 subtract 9 
        if arry_revcc[n] > 9
          arry_revcc[n] = arry_revcc[n] - 9
        end
        puts arry_revcc[n]
      end
      #add to sum
      cc_sum = cc_sum + arry_revcc[n]
    #end loop
    end
    #check divisble by 10, return good or bad
    puts "final sum "
    puts cc_sum
    if cc_sum % 10 == 0
      return true
    else 
      return false
    end
  end

end
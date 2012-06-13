def case_it(x)
    case x
    when "3" then x*3 #equivalent to when x === "3"
    when 4 then x*4
    when 5 then x*5
    else x*2
    end
   
end

def case_equality(x)
      #this is an interesting version of the case statement/expression
      #For example, the first when clause is evaluated as follows when String === x, where String is the
      #identifier for the String class
      case
      when String then "string"
      when Numeric then "number"
      else "other"
    end    
end

puts case_it("3")

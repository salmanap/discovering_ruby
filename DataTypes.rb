class DataTypes

  def printAllNumerics
    puts"Printing Numerics \n"
    puts "71 is an integer and therefore 71.class = " + 71.class.to_s #should print fixnum (31 bits)
    puts "On this particular mac 2^30 is the max a FixNum is represented therefore 1073741824.class = " + 1073741824.class.to_s #should print Bignum
    puts "Here's a floating point number and its class representation 343.32.class= = " + 343.32.class.to_s #should print float
    puts "\n\n"
    
    ## BigDecimal, Complex and Rational numbers are not built-in but are part
    ## of the standard library
  end
  
  def arithmeticOperations
      puts"Working on arithmetic operations\n"
      puts "The result of dividing two integers is always two integers "
      x = 6/2
      puts "6/2 = 3, 3.class = " + x.class.to_s
      puts "-7/3 is " + (-7/3).to_s + " because ruby always rounds to negative infinity whever there is a negative sign"
      
      puts"\nModulous operations are very tricky in Ruby, especially dealing with negative numbers"
      puts"7%3 is " + (7%3).to_s
      puts"But -7%3 is " + (-7%3).to_s + " this is because the sign of the result is always the same as the sign of the operand"
      puts"7%-3 is " + (7%-3).to_s
      puts "\n\n"
      
  end 
  
  def letsTalkStringsQuickly
      puts "\"Hey there, I am a double quoted string\""
      puts '\'Hey there, I am a single quoted string\''
      inner = "inner"
      puts "I am a \#{variable} string with the value: #{inner}"
  end
  
  def arrays
      simple_array = [1,2,3,4]; print "a simple array " + simple_array.to_s + "\n"
      word_array = %w[this is a word array]; print "a word array %w[this is a word array] " + word_array.to_s + "\n" 
      puts "The array class defines some nifty operators such as + -. Their uses are demonstrated below\n"
      puts "Array's can be joined with a simple + opeartor. These is not a set operator!"
      puts "For example [1,2,3] + [4,5,6] results in " + ([1,2,3]+[4,5,6]).to_s
      
      puts "\n To remove elements from an array the - operator can be employed"
      puts "For example, [1,2,2,3,4,5,6] - [3,1,6] = " + ([1,2,2,3,4,5,6]-[3,1,6]).to_s
      
      puts "The << (left shit) is used to append things to an array"
      puts "[1,2,3,4] << 9 = " + ([1,2,3,4]<<9).to_s
      
      puts "Bitwise operators like | and & can be used to perform setwise operatorions"
  end
  
  def hashes
      puts "Let's talk hashes!"
      puts "The keys of a hash can be a string object or symboles denoted by :"
      puts "a_hash = {one:1, two:2}"
      a_hash = {one:1, two:2}
      puts "Accessing hashes are like accessing arrays a_hash[:one] =" + (a_hash[:one]).to_s
      
  end
  
  def objects_and_their_equality
      puts "let's talk objects and their identities"
      puts "Each object has a unique ID during its life, defined by object_id. For example"
      puts "o = \"test\" o.object_id = " + ("test".object_id).to_s
      
      puts "\nin order to test inheritance and is_a relationships we have the following methods"
      puts "o.is_a? o.instance_of? where instance_of does not check inheritance, but checks the class of the obejct"
      puts "o.instance_of? String = " + ("test".is_a? String).to_s
      puts "o.instance_of? BasicObject = " + ("test".instance_of? BasicObject).to_s
      puts "o.is_a? BasicObject = " + ("test".is_a? BasicObject).to_s
      object_equality
     
  end
  
  private
     
  def object_equality
      puts "\nObject identity is defined with the equal? method, which object equality is defined with =="
      puts "This is the exact oppostive of Java, where == is used for identity. Let's look at these principles more closely"
      a= "Ruby"; b=c="Ruby";
      puts "a= \"Ruby\"; b=c=\"Ruby\"; a.equal?(b);" + (a.equal?(b)).to_s + " b.equal?(c); " + (b.equal?(c)).to_s
      puts "a.object_id == b.object_id #works like a.equal?(b) \n"
      
      puts "\nthe eql? and equal? are synonyms in the Object class"
      puts "However, classes that override use it as a stricter version of == that does not do type conversion"
      puts "1.0 == 1 " + (1.0 == 1).to_s
      puts "1.0.eql?(1) " + (1.0.eql?(1)).to_s
      
      puts "\nIf two objects are eql? then their hashcode must return the same value"
      puts "=== operator is normally use as case equality, used with case and when statements"
      puts "It has uses for membership, such as an integer in a Range, but this idiom is confusing and personally should be avoided "
 
  end
 
  
end

data_types = DataTypes.new
#data_types.printAllNumerics
#data_types.arithmeticOperations
#data_types.letsTalkStringsQuickly
#data_types.arrays
#data_types.hashes
data_types.objects_and_their_equality

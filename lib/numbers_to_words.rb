
def convert(number)

  number_array = number.to_s.split("")
  ones = {"1" => "one", "2"=> "two", "3"=> "three", "4"=> "four", "5" => "five", "6" => "six", "7"=> "seven", "8" => "eight", "9"=> "nine", "10" => "ten", "11" => "eleven", "12" => "twelve", "13" => "thirteen", "14" => "fourteen", "15" => "fifteen", "16" => "sixteen", "17" => "seventeen", "18" => "eighteen", "19" => "nineteen"}
  tens = {"1" => "ten", "2" => "twenty", "3" => "thirty", "4" => "fourty", "5" => "fifty", "6" => "sixty", "7" => "seventy", "8" => "eighty", "9" => "ninety"}
  hundreds = {"1" => "one hundred ", "2" => "two hundred ", "3" => "three hundred ", "4" => "four hundred ", "5" => "five hundred ", "6" => "six hundred ", "7" => "seven hundred ", "8" => "eight hundred ", "9" => "nine hundred "}
  if number < 19
    ones.fetch(number.to_s)
  elsif number >= 20 && number <100
    temp_array = []
    temp_array.push(tens.fetch(number_array[0]))
    temp_array.push(ones.fetch(number_array[1]))
    return temp_array.join
  elsif number >= 100 && number <999
    temp_array = []
    temp_array.push(hundreds.fetch(number_array[0]))
    temp_array.push(tens.fetch(number_array[1]))
    #
    return temp_array.join
  end
end

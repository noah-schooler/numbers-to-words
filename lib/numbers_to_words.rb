
def convert(number)

  number_array = number.to_s.split("")
  ones = {"0" => "0", "1" => "one", "2"=> "two", "3"=> "three", "4"=> "four", "5" => "five", "6" => "six", "7"=> "seven", "8" => "eight", "9"=> "nine", "10" => "ten", "11" => "eleven", "12" => "twelve", "13" => "thirteen", "14" => "fourteen", "15" => "fifteen", "16" => "sixteen", "17" => "seventeen", "18" => "eighteen", "19" => "nineteen"}
  tens = {"0" => "0", "1" => "ten", "2" => "twenty", "3" => "thirty", "4" => "forty", "5" => "fifty", "6" => "sixty", "7" => "seventy", "8" => "eighty", "9" => "ninety"}
  hundreds = {"0" => "0", "1" => "one hundred", "2" => "two hundred", "3" => "three hundred", "4" => "four hundred", "5" => "five hundred", "6" => "six hundred", "7" => "seven hundred", "8" => "eight hundred", "9" => "nine hundred"}
  thousands = {"0" => "0", "1" => "one thousand", "2" => "two thousand", "3" => "three thousand", "4" => "four thousand", "5" => "five thousand", "6" => "six thousand", "7" => "seven thousand", "8" => "eight thousand", "9" => "nine thousand"}
  tenthousands ={"0" => "0", "1" => "ten", "2" => "twenty", "3" => "thirty", "4" => "forty", "5" => "fifty", "6" => "sixty", "7" => "seventy", "8" => "eighty", "9" => "ninety"}
  if number < 19
    ones.fetch(number.to_s)
  elsif number >= 20 && number <100
    result_array = []
    result_array.push(tens.fetch(number_array[0]))
    result_array.push(ones.fetch(number_array[1]))
    return result_array.delete_if{|i| i == "0"}.join(" ")
  elsif number >= 100 && number <1000
    result_array = []
    result_array.push(hundreds.fetch(number_array[0]))
    result_array.push(tens.fetch(number_array[1]))
    result_array.push(ones.fetch(number_array[2]))

    return result_array.delete_if{|i| i == "0"}.join(" ")
    binding.pry
  elsif number >= 1000 && number <10000
    result_array = []
    result_array.push(thousands.fetch(number_array[0]))
    result_array.push(hundreds.fetch(number_array[1]))
    result_array.push(tens.fetch(number_array[2]))
    result_array.push(ones.fetch(number_array[3]))
    # binding.pry
    return result_array.delete_if{|i| i == "0"}.join(" ")
  elsif number >= 10000 && number <100000
    result_array = []
    result_array.push(tenthousands.fetch(number_array[0]))
    result_array.push(thousands.fetch(number_array[1]))
    result_array.push(hundreds.fetch(number_array[2]))
    result_array.push(tens.fetch(number_array[3]))
    result_array.push(ones.fetch(number_array[4]))
    # binding.pry
    return result_array.delete_if{|i| i == "0"}.join(" ")
  end
end

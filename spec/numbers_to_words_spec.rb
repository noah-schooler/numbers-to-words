require('rspec')
require('pry')
require('numbers_to_words.rb')

describe('numbers_to_words.rb') do
  it("returns word for numbers between 1 and 19") do
    expect(convert(18)).to(eq("eighteen"))
  end
  it("returns word for numbers  20-99") do
    expect(convert(25)).to(eq("twentyfive"))
  end
  it("returns word for numbers greater than 100-999") do
    expect(convert(250)).to(eq("two hundred fifty"))
  end
end

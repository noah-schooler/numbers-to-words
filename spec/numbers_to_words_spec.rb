require('rspec')
require('pry')
require('numbers_to_words.rb')

describe('numbers_to_words.rb') do
  it("returns word for numbers between 1 and 19") do
    expect(convert(18)).to(eq("eighteen"))
    expect(convert(13)).to(eq("thirteen"))
    expect(convert(4)).to(eq("four"))
  end
  it("returns word for numbers 20-99") do
    expect(convert(25)).to(eq("twenty five"))
    expect(convert(40)).to(eq("forty"))
  end
  it("returns word for numbers 100-999") do
    expect(convert(250)).to(eq("two hundred fifty"))
    expect(convert(999)).to(eq("nine hundred ninety nine"))
  end
  it("returns word for numbers 1000-9999") do
    expect(convert(2500)).to(eq("two thousand five hundred"))
    expect(convert(9990)).to(eq("nine thousand nine hundred ninety"))
  end
  it("returns word for numbers 10,000-99,999") do
    expect(convert(25000)).to(eq("twenty five thousand"))
    expect(convert(99909)).to(eq("ninety nine thousand nine hundred nine"))
  end
end

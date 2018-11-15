require('rspec')
require('pry')
require('numbers_to_words.rb')

#keep in mind .to_a and .each_slice methods
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
    expect(convert(214)).to(eq("two hundred fourteen"))
    expect(convert(999)).to(eq("nine hundred ninety nine"))
  end
  it("returns word for numbers 1000-9999") do
    expect(convert(2005)).to(eq("two thousand five"))
    expect(convert(4115)).to(eq("four thousand one hundred fifteen"))
    expect(convert(9990)).to(eq("nine thousand nine hundred ninety"))
  end
  it("returns word for numbers 10,000-99,999") do
    expect(convert(25000)).to(eq("twenty five thousand"))
    # expect(convert(14000)).to(eq("fourteen thousand"))
    expect(convert(99909)).to(eq("ninety nine thousand nine hundred nine"))
  end
  it("returns word for numbers 100,000-999,999") do
    expect(convert(235206)).to(eq("two hundred thirty five thousand two hundred six"))
    expect(convert(876900)).to(eq("eight hundred seventy six thousand nine hundred"))
  end
  it("returns word for numbers 1,000,000-9,999,999") do
    expect(convert(6253450)).to(eq("six million two hundred fifty three thousand four hundred fifty"))
    expect(convert(9000000)).to(eq("nine million"))
  end
  it("returns word for numbers 10,000,000-99,999,999") do
    expect(convert(62534503)).to(eq("sixty two million five hundred thirty four thousand five hundred three"))
    expect(convert(90000002)).to(eq("ninety million two"))
  end
  it("returns word for numbers 100,000,000-999,999,999") do
    expect(convert(625345503)).to(eq("six hundred twenty five million three hundred forty five thousand five hundred three"))
    expect(convert(900000022)).to(eq("nine hundred million twenty two"))
  end
  it("returns word for numbers 1,000,000,000-9,999,999,999") do
    expect(convert(6251345000)).to(eq("six billion two hundred fifty one million three hundred forty five thousand"))
    # expect(convert(9014000500)).to(eq("nine billion fourteen million five hundred"))
    expect(convert(9999999999)).to(eq("nine billion nine hundred ninety nine million nine hundred ninety nine thousand nine hundred ninety nine"))
  end
end

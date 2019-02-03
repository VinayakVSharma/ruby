class Phone
  @@no_of_phones = 0
  attr_reader :brandName
  attr_accessor :model_no
  def initialize(brand_name)
    @brand_name = brand_name
    @model_no = " "
    @@no_of_phones+=1
  end
  def self.getNoOfPhones
    puts "Number of Phones is #{@@no_of_phones}"
  end
end

first_phone = Phone.new("Xiaomi")
second_phone = Phone.new("Samsung")
third_phone = Phone.new("ASUS")
fourth_phone = Phone.new("Lenovo")

Phone.getNoOfPhones
puts "Brand Name is  #{first_phone.brandName}"
first_phone.model_no="80DY"
puts "Model No is  #{first_phone.model_no}"
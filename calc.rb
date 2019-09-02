# robot
class ISBN
  def initialize(val)
    @val = val
  end

  def spec_multiply
    arr = @val.gsub('-', '').each_char.map(&:to_i)
    sum = arr.values_at(* arr.each_index.select {|i| i.even?}).map{|e| e * 1}.sum +
          arr.values_at(* arr.each_index.select {|i| i.odd?}).map{|e| e * 3}.sum
    res = 10 - (sum % 10)
    res == 10 ? 0 : res
  end
end
puts 'Hi, please enter ISBN13 code'
isbn = gets
isbn_obj = ISBN.new(isbn)
puts "Result: #{isbn_obj.spec_multiply}"
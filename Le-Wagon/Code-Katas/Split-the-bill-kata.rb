def split_the_bill(x)
  bill=0.0
  x.each { |person, payment| bill = bill+payment}
  bill_per_person= bill / x.count
  x.each{ |person, payment| x[person] = (payment - bill_per_person).round(2) }
end
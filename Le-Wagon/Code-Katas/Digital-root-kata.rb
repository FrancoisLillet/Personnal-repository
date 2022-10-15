def digital_root(n)
  while n>9 do
    n=n.to_s.split("").collect { |k| k.to_i }
    n=n.sum
  end
  n
end
#6kyu kata
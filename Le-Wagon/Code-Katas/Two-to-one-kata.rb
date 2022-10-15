def longest(a1, a2)
  string = a1.split("") | a2.split("")
  string.sort!.join
end
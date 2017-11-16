
def Get_dupe(country)
  dupli = country.select {|i| country.count(i) > 1}
  puts dupli.uniq

end

Get_dupe(["america","india","china","tibet","india","mexico","america","england","china","india"])
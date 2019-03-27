
def get_dupe(country)

  dupli = country.select {|i| country.count(i) > 1}
  dupli.uniq

end

p get_dupe(%W(IND USA UK IND UK RUS CHI))
#Get_dupe(["america","india","china","tibet","india","mexico","america","england","china","india"])
# Displays only duplicates.
def disp_dup(cntry)
  dupli_cnty = cntry.select{|i| cntry.count(i)> 1}
  #p dupli_cnty # => ["ind", "uk", "uk", "ind", "22", "22"]
  p dupli_cnty.uniq
end

disp_dup( %w(usa ind uk chin uk ind 22 44 33 22 ))
#disp_dup( [ "US", 11, 12, 66, 88, 11, 88, "UK", "UK", "IND"] )
#disp_dup( %w{usa ind uk chin uk ind 22 44 33 22} )
# #disp_dup( %w[usa ind uk chin uk ind 22 44 33 22] )



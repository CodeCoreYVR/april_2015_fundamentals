average_temperature_in_c = {vancouver: 13.7, edmonton: 8.5, Calgary: 10.5}

average_temperature_in_f = {}

average_temperature_in_c.each do |city, temperature|
  average_temperature_in_f[city] =  (temperature * 9/5 + 32)
end

print average_temperature_in_f

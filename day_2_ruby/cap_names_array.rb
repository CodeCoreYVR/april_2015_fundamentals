names = %w(sarah sandra michael jack kevin)

cap_names = names.map {|name| name.capitalize.reverse }

# this is the same as doing:
cap_names = names.map do |name|
              name.capitalize.reverse
            end

print names

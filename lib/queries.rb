# Write methods that return SQL queries for each part of the challeng here

def guest_with_most_appearances
  "SELECT name, count(name) FROM guests
GROUP BY name
ORDER BY count(name) DESC LIMIT 1;"
end

"SELECT occupation FROM guests
GROUP BY year
ORDER BY count(occupation) DESC;"
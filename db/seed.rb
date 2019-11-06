# Parse the CSV and seed the database here! Run 'ruby db/seed' to execute this code.
#require_relative '../daily_show_guests.csv'

file = File.open('/Users/zoraaver/Development/code/bonus-sql-challenge-london-web-102819/daily_show_guests.csv')


open('guest_sql_data.sql', 'w'){ |g|

    file.each do |line|
        guest_info = line.split(",")
        year = guest_info[0]
        occupation = guest_info[1]
        date = guest_info[2]
        area = guest_info[3]
        name = guest_info[4].chomp.delete('"')
        if name =~ /'/
            name.insert(name =~ /'/, "'")
        end
        g.puts "INSERT INTO guests (year, occupation, date, area, name) VALUES (#{year}, '#{occupation}', '#{date}', '#{area}', '#{name}');"
    end
}




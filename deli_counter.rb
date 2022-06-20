require "pry"

katz_deli = []

def line katz_deli
    if katz_deli.length == 0
        puts "The line is currently empty."
    elsif katz_deli.length >= 1
        place_in_line = katz_deli.map.with_index do |person, index|
            "#{index + 1}. #{person}"
        end
        
        place_in_line = place_in_line.join(" ")
        puts "The line is currently: #{place_in_line}"
    end
    
end

def take_a_number katz_deli, name
    katz_deli = katz_deli.push(name)
    puts "Welcome, #{name}. You are number #{katz_deli.length} in line."
end


def now_serving katz_deli
    if katz_deli.empty? 
        puts "There is nobody waiting to be served!"
    elsif katz_deli.length >= 1
        puts "Currently serving #{katz_deli.first}."
        katz_deli = katz_deli.shift
    end
end
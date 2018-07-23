#!/usr/bin/ruby -w

puts "Hello, Ruby!";

END {
    puts "This triggers at the end"
}

BEGIN {
    puts "Initializing Ruby" # can comment at the end of a line
}
# comment

=begin
Block comment
full of several lines
=end

class Customer

end

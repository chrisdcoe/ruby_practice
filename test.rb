#!/usr/bin/ruby -w

########## GENERAL COMMENTS ##########
# comment

=begin
Block comment
full of several lines
=end

########## GLOBAL VARIABLES ##########
# global variables begin with $
$global_variable = 10

########## CLASS DEFINITIONS ##########
class Customer
    # class variables are preceded by @@ and are available across different objects
    # it is a characteristic of the class. not available across classes

    @@no_of_customers = 0

    # constants begin with uppercase, may not be defined within methods, cannot be reassigned
    VAR1 = 100
    VAR2 = 200

    # initialize method: executed when .new is called with parameters
    def initialize(id, name, addr)
        # Instance variables start with @, available across methods for that instance or object
        @cust_id = id
        @cust_name = name
        @cust_addr = addr

        @@no_of_customers += 1
    end

    def display_details()
        puts "Customer id #@cust_id"
        puts "Customer name #@cust_name"
        puts "Customer address #@cust_addr"
    end

    def total_no_of_customers()
        puts "Total number of customers: #@@no_of_customers"
    end

    def show
        puts "Value of first Constant is #{VAR1}"
        puts "Value of second Constant is #{VAR2}"
    end
end

########## MAIN LOGIC ##########
puts "The first put!";

END {
    puts "This triggers at the end"
}

BEGIN {
    puts "Initializing Ruby" # can comment at the end of a line
}

### Create Objects ###
cust1 = Customer.new("1", "John", "Wisdom Apartments, Ludhiya")
cust2 = Customer.new("2", "Poul", "New Empire Road, Khandala")

### Call Methods ###

cust1.display_details()
cust2.display_details()
cust1.total_no_of_customers()
cust2.total_no_of_customers()
cust1.show

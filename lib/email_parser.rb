class EmailAddressParser
    attr_accessor :email_addresses
    def initialize(email_addresses)
        @email_addresses = email_addresses
    end
    
    def parse
        a = @email_addresses.split(" ")
        b = a.map {|addr|
             divved = addr.split("")
            remove_com = divved.select {|char|
                char != ","
            }
            remove_com.join("")
        }
        c = b.uniq
        p c
    end
end

parser = EmailAddressParser.new("avi@test.com, arel@test.com")
parser.parse

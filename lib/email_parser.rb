# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ')
class EmailAddressParser
    def initialize(email_addresses)
        @addresses = email_addresses
    end

  attr_accessor :addresses
    

    def parse
        @addresses.split(/,?\s+/).uniq
    end
end



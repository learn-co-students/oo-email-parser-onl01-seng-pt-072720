# Build a class EmailAddressParser that accepts a string of unformatted 

class EmailAddressParser
  
  attr_accessor :name, :emails_addresses
  
  def initialize(emails_addresses)
    @emails_addresses = emails_addresses
  end 
  
  def parse 
    emails_addresses.split.collect do |address|
      address.split(',') 
    end
    .flatten.uniq 
  end 
  
end  
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

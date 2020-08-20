# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailAddressParser
  attr_accessor :email
  
  @@email_list = []
  
  def initialize(email)
    @email = email
    @@email_list << email
  end
  
  def parse
    new = @email.split(/[\s,]/)
    new.map{|i| i}.reject { |item| item.nil? || item == ""}.uniq
  end
  
end
require "pry"
emails = "avi@test.com, arel@test.com test@avi.com, test@arel.com"

class EmailAddressParser

  attr_accessor :emails

  def initialize(emails)
    @emails = emails
  end

  def parse
    emails_array = @emails.split(/,? /)
    emails_array.uniq
  end
end

# binding.pry

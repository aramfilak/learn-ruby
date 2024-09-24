# class name always starts with a capital letter
class Member
  # class variables always start with @@.
  # the are static variables this means that they are shared among all instances of a class
  @@total_members = 0

  # global variable
  # always starts with $
  $global_variable = 10

  # instance variable
  # always starts with @
  @member_id = 0
  @member_name = ""
  @member_email = ""

  # constructor
  def initialize(id, name, email)
    @member_id = id
    @member_name = name
    @member_email = email
  end

  # methods
  def print_details
    puts "Member id: #{@member_id}"
    puts "Member name: #{@member_name}"
    puts "Member email: #{@member_email}"
  end
end

# create an instance of the class
# object = class.new
Mebmer1 = Member.new(1, "John", "john@gmail.com")

Mebmer1.print_details
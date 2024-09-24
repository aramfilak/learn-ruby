# class name always starts with a capital letter
class Member
  # class variables always start with @@.
  # the are static variables this means that they are shared among all instances of a class
  @@total_members = 0
  # allow to read and write the variable
  attr_accessor :member_email
  # or you can use attr_reader to only read the variable
  attr_reader :member_id
  # or you can use attr_writer to only write the variable
  attr_writer :member_name


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
mebmer1 = Member.new(1, "John", "john@gmail.com")

mebmer1.print_details

class Person
  @@hash  ={"Employee"  => "20K", "Senior_person" =>  "40K", "Customer" => "None"}

  def initialize(name,post)
    @name=name
    @post=post
  end

  protected 
  def protected_method
    puts "salary of #{@name} is #{@@hash[@post]}"
  end
end

class Employee < Person
  def salary_eml
    protected_method
  end
end

class Senior_person < Person
  def salary_snrp
    protected_method
  end
end

class Customer < Person
  def salary_cstp
    protected_method
  end
end


emply = Employee.new("Niharika","Employee")
emply.salary_eml

snr = Senior_person.new("Tejas","Senior_person")
snr.salary_snrp

cst = Customer.new("Sagar","Customer")
cst.salary_cstp


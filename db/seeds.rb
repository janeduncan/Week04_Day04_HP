require_relative('../models/student')
require_relative('../models/house')

# Student.delete_all()

house1 = House.new({
  "name" => "Gryffindor"
  })

house2 = House.new({
  "name" => "Ravenclaw"
  })


house3 = House.new({
  "name" => "Hufflepuff"
  })

house4 = House.new({
  "name" => "Slytherin"
  })

house1.save()
house2.save()
house3.save()
house4.save()

student1 = Student.new({
  "first_name" => "Jane",
  "second_name" => "Duncan",
  "house" => "Gryffindor",
  "age" => "30"
  })

student2 = Student.new({
  "first_name" => "Shannon",
  "second_name" => "Holmes",
  "house" => "Hufflepuff",
  "age" => "34"
  })

student1.save()
student2.save()

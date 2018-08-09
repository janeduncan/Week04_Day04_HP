require_relative('../models/student')

# Student.delete_all()

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

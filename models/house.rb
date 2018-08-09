require_relative('../db/sql_runner')

class House

  attr_accessor :name, :logo, :id

  def initialize(options)
    @id = options['id'].to_i() if options['id']
    @name = options['name']
    @logo = options['logo']
  end

  def save()
    sql ="INSERT INTO students (name, logo)
    VALUES ($1, $2) RETURNING *"
    values = [@name, @logo]
    student_data = SqlRunner.run(sql, values)
    @id = student_data.first()['id'].to_i()
  end

end

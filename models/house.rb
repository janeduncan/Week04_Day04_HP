require_relative('../db/sql_runner')

class House

  attr_accessor :name, :id

  def initialize(options)
    @id = options['id'].to_i() if options['id']
    @name = options['name']
    # @logo = options['logo']
  end

  def save()
    sql ="INSERT INTO houses (name)
    VALUES ($1) RETURNING *"
    values = [@name]
    student_data = SqlRunner.run(sql, values)
    @id = student_data.first()['id'].to_i()
  end

  def self.all()
    sql = "SELECT * FROM houses"
    houses = SqlRunner.run(sql)
    result = houses.map { |house| House.new(house) }
    return result
  end

  def self.find(id)
    sql = "SELECT * FROM houses WHERE id = $1"
    values = [id]
    house = SqlRunner.run(sql, values)
    result = House.new(house.first())
    return result
  end

end

require_relative 'practica_dos.rb'

class ProductsList
  def initialize
    @practica_dos = PracticaDos.new
    @practica_dos.create_file('ejercicio_12.txt')
    puts @products = self.parse_file('ejercicio_12.txt')
  end
  def parse_file(file)
    collect_file = []
    f = File.open(file)
    f.each { |line| collect_file << line.split(',') }
    collect_file
  end
end

ejercicio_12 = ProductsList.new
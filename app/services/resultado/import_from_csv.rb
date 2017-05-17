require 'open-uri'
require 'csv'

class Resultado::ImportFromCsv
  def initialize(file)
    @file = open(file)
  end

  def run
    @count = 0
    # format:
    # descripcion, tags
    CSV.new(@file, headers: :first_row).each do |line|
      Resultado.create!(
        descripcion: line["descripcion"],
        tag_list: line["tags"]
      )
      @count += 1
    end
    puts "created #{@count} resultados!"
  end
end

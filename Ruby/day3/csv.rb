class CsvRowField
    attr_accessor :name, :value

    def initialize(name, value)
        @name = name
        @value = value
    end
end

class CsvRow
    def initialize(fields=[])
        @fields = fields
    end

    def method_missing name, *args
        (@fields.find { |field| field.name == name.to_s }).value
    end
end

class ActsAsCsv
    include Enumerable

    def each(&block)
        @rows.each(&block)
    end

    def read
        file = File.new(self.class.to_s.downcase + '.txt')

        @headers = file.gets.chomp.split(', ')

        file.each do |row|
            fields = row.chomp.split(', ')
            
            @rows << CsvRow.new(fields.map.with_index { |field, index| CsvRowField.new(@headers[index], field) })
            @result << fields
        end
    end

    def headers
        @headers
    end

    def csv_contents
        @result
    end

    def initialize
        @rows = []
        @result = []

        read
    end
end

class RubyCsv < ActsAsCsv
end

csv = RubyCsv.new
csv.each do |row|
    puts row.one
end
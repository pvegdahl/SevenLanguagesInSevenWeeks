class ActsAsCsv
    def read
        file = File.new(self.class.to_s.downcase + ".csv")
        @headers = file.gets.chomp.split(", ")

        file.each do |row|
            @result << row.chomp.split(", ")
        end
    end

    def headers
        @headers
    end

    def csv_contents
        @result
    end

    def initialize
        @result = []
        read
    end

    def method_missing name, *args
        column_name = name.to_s
        index = @headers.index column_name
        @result.map {|row| row[index]}
    end
end

class RubyCsv < ActsAsCsv
end

m = RubyCsv.new
puts m.headers.inspect
puts m.csv_contents.inspect
puts m.name
puts m.type

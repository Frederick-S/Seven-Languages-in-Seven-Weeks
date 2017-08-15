File.foreach('if.txt').with_index do |line, line_number|
    if line =~ /heart/
        puts "#{line_number}: #{line}"
    end
end
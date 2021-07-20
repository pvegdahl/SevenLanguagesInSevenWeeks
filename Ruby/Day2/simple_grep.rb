File.open("GrepInput.txt", "r").each_line {|line| puts line if line.match("[Tt]he")}

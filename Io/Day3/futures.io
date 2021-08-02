Numbers := Object clone
Numbers three := method(wait(1); 3)

futureResult := Numbers @three

writeln("Happens immediately")
writeln("The delayed number: ", futureResult)

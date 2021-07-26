Greeting := Object clone
Greeting word := "Greetings"
Greeting execute := method(x, (word .. " " .. x .. "!")  println)
hello := Greeting clone
hello word := "Hello"
hello execute("World")


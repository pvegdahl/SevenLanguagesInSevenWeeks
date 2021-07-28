fib_recursive := method(x,
    if(x <= 2, 1, fib_recursive(x-1) + fib_recursive(x-2)))

for(i, 1, 10, ("fib_recursive(" .. i .. ") = " .. fib_recursive(i)) println)

fib_loop := method(x,
    if(x <= 2, return 1)
    n1 := 1
    n2 := 1
    for(i,3,x,
        n_temp := n2
        n2 := n1 + n2
        n1 := n_temp
    )
    n2
)

for(i, 1, 10, ("fib_loop(" .. i .. ") = " .. fib_loop(i)) println)


    

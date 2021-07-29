matrix_add := method(matrix,
    matrix map(x, x sum) sum
)

mm := list(list(2, 3, 4), list(1, 2, 3), list(1, 4))

matrix_add(mm) println

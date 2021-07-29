Matrix := Object clone
Matrix dim := method(x, y,
    self data := List clone setSize(x) map(_, List clone setSize(y))
)

Matrix get := method(x, y,
    self data at(x) at(y)
)

Matrix set := method(x, y, value,
    self data at(x) atPut(y, value)
)

Matrix print := method(self data foreach(x, x println))

mm := Matrix clone
mm dim(3, 4)

for(i, 0, 2, for(j, 0, 3, mm set(i, j, i*j)))

mm print

for(i, 0, 2, for(j, 0, 3, mm get(i, j) print); "" println)

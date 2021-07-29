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

Matrix transpose := method(
    current_x := self data size
    current_y := self data at(0) size
    new_matrix := Matrix clone
    new_matrix dim(current_y, current_x)

    for(i, 0, current_x-1, for(j, 0, current_y-1, new_matrix set(j, i, self get(i, j))))
    return new_matrix
)

mm := Matrix clone
mm dim(3, 4)

for(i, 0, 2, for(j, 0, 3, mm set(i, j, i*j)))

mm print

m2 := mm transpose

m2 print



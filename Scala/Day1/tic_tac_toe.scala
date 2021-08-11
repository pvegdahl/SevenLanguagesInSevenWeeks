def get_winner(board: Array[Array[Char]]): Char = {
  for (i <- 0 to 2) {
    get_winner(get_column(board, i)).foreach(winner => return winner)
    get_winner(get_row(board, i)).foreach(winner => return winner)
  }

  get_winner(get_diagonal_1(board)).foreach(winner => return winner)
  get_winner(get_diagonal_2(board)).foreach(winner => return winner)

  '?'
}

def get_column(board: Array[Array[Char]], i: Int): Array[Char] = {
  Array(board(i)(0), board(i)(1), board(i)(2))
}

def get_row(board: Array[Array[Char]], i: Int): Array[Char] = {
  Array(board(0)(i), board(1)(i), board(2)(i))
}

def get_diagonal_1(board: Array[Array[Char]]): Array[Char] = {
  Array(board(0)(0), board(1)(1), board(2)(2))
}

def get_diagonal_2(board: Array[Array[Char]]): Array[Char] = {
  Array(board(0)(2), board(1)(1), board(2)(0))
}

def get_winner(triple: Array[Char]): Option[Char] = {
  if (triple(0) == triple(1) && triple(0) == triple(2)) {
    Some(triple(0))
  } else {
    None
  }
}

println("The winner is: " + get_winner(Array(
  Array('X', 'O', 'X'),
  Array('O', 'X', 'O'),
  Array('X', 'O', 'X')
)))

println("The winner is: " + get_winner(Array(
  Array('O', 'O', 'O'),
  Array('O', 'X', 'O'),
  Array('X', 'O', 'X')
)))

println("The winner is: " + get_winner(Array(
  Array('X', 'O', 'O'),
  Array('X', 'O', 'X'),
  Array('X', 'X', 'O')
)))

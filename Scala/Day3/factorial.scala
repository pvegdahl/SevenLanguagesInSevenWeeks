def factorial(n: Int): Int = n match {
  case 0 => 1
  case x if x > 0 => factorial(n-1)*n
}

for (i <- 0 to 10) {
  println(factorial(i))
}
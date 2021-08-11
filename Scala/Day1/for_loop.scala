def for_loop: Unit = {
  println("For loop using Java style iteration")
  for(i <- 0 until args.length) {
    println(args(i))
  }

  println("For loop using Ruby style iteration")
  args.foreach { arg => println(arg) }
}
for_loop

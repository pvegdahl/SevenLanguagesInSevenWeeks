def totalStringSize(listOfStrings: List[String]): Int = listOfStrings.foldLeft(0)((sum, s) => sum + s.length)

val testData = List("one", "two", "three", "four", "five")

println(totalStringSize(testData))



